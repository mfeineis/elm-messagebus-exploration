module Test.Happypath exposing (suite)

import Dom.Markdown as Markdown
import Expect
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "A valid Markdown document"
        [ test "A pretty normal heading" <|
            \_ ->
                """# A Simple Markdown document"""
                    |> Markdown.toHtmlString
                    |> Expect.equal "<h1>A Simple Markdown document</h1>\n"
        , test "A pretty normal subheading" <|
            \_ ->
                """## Subheading\n### Subsubheading"""
                    |> Markdown.toHtmlString
                    |> Expect.equal
                        (String.join ""
                            [ "<h2>Subheading</h2>\n"
                            , "<h3>Subsubheading</h3>\n"
                            ]
                        )
        ]
