const fs = require("fs");
const path = require("path");

const {
    flatten,
    forEachObjIndexed,
    groupBy,
    head,
    join,
    map,
    mapObjIndexed,
    pipe,
    prop,
    replace,
    tap,
    toUpper,
} = require("ramda");

const spec = require("./commonmark.complete.json");

const exampleToTest = ({ end_line, example, html, markdown, start_line }) => `

        describe "example ${example}"
            [ test """${markdown}""" <|
                \\_ ->
                    """${markdown}"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """${html}"""
            ]

`;

const generateSection = (examples, section) => {
    const moduleName = pipe(
        replace(/ ([a-z])/g, (_, it) => toUpper(it)),
        replace(/\W/g, ""),
        replace(/^(\w)/, (_, it) => toUpper(it)),
    )(section);
    const modulePath = `Test.Generated.${moduleName}`;

    const content = `module ${modulePath} exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "${section}"
        [${join("        ,", map(exampleToTest, examples))}
        ]`;

    return {
        moduleName,
        modulePath,
        content,
    };
};

const renderSection = ({ moduleName, modulePath, content }) => {
    const fileName = `${replace(/\./g, "/", modulePath)}.elm`;
    const basePath = path.resolve(__dirname, "Test/Generated");
    const fullFileName = path.resolve(__dirname, fileName);

    if (!fs.existsSync(basePath)) {
        fs.mkdirSync(basePath);
    }

    //console.log("writeFileSync(", fullFileName, ",", content, ")");

    fs.writeFileSync(fullFileName, content, 'utf-8');
};

const escapeSpecial = pipe(
    replace(/\\/g, "\\\\"),
    replace(/\n/g, "\\n"),
    replace(/\r/g, "\\r"),
    replace(/\t/g, "\\t"),
);

const escapeContent = example => ({
    ...example,
    html: escapeSpecial(example.html),
    markdown: escapeSpecial(example.markdown)
});

pipe(
    map(escapeContent),
    groupBy(prop("section")),
    mapObjIndexed(generateSection),
    map(renderSection),
)(spec);
