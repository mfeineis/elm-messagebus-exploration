module Test.Generated.CodeSpans exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Code spans"
        [

        describe "example 316"
            [ test """`foo`\n""" <|
                \_ ->
                    """`foo`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>foo</code></p>\n"""
            ]

        ,

        describe "example 317"
            [ test """`` foo ` bar  ``\n""" <|
                \_ ->
                    """`` foo ` bar  ``\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>foo ` bar</code></p>\n"""
            ]

        ,

        describe "example 318"
            [ test """` `` `\n""" <|
                \_ ->
                    """` `` `\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>``</code></p>\n"""
            ]

        ,

        describe "example 319"
            [ test """``\nfoo\n``\n""" <|
                \_ ->
                    """``\nfoo\n``\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>foo</code></p>\n"""
            ]

        ,

        describe "example 320"
            [ test """`foo   bar\n  baz`\n""" <|
                \_ ->
                    """`foo   bar\n  baz`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>foo bar baz</code></p>\n"""
            ]

        ,

        describe "example 321"
            [ test """`a  b`\n""" <|
                \_ ->
                    """`a  b`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>a  b</code></p>\n"""
            ]

        ,

        describe "example 322"
            [ test """`foo `` bar`\n""" <|
                \_ ->
                    """`foo `` bar`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>foo `` bar</code></p>\n"""
            ]

        ,

        describe "example 323"
            [ test """`foo\\`bar`\n""" <|
                \_ ->
                    """`foo\\`bar`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>foo\\</code>bar`</p>\n"""
            ]

        ,

        describe "example 324"
            [ test """*foo`*`\n""" <|
                \_ ->
                    """*foo`*`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>*foo<code>*</code></p>\n"""
            ]

        ,

        describe "example 325"
            [ test """[not a `link](/foo`)\n""" <|
                \_ ->
                    """[not a `link](/foo`)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[not a <code>link](/foo</code>)</p>\n"""
            ]

        ,

        describe "example 326"
            [ test """`<a href="`">`\n""" <|
                \_ ->
                    """`<a href="`">`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>&lt;a href=&quot;</code>&quot;&gt;`</p>\n"""
            ]

        ,

        describe "example 327"
            [ test """<a href="`">`\n""" <|
                \_ ->
                    """<a href="`">`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="`">`</p>\n"""
            ]

        ,

        describe "example 328"
            [ test """`<http://foo.bar.`baz>`\n""" <|
                \_ ->
                    """`<http://foo.bar.`baz>`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>&lt;http://foo.bar.</code>baz&gt;`</p>\n"""
            ]

        ,

        describe "example 329"
            [ test """<http://foo.bar.`baz>`\n""" <|
                \_ ->
                    """<http://foo.bar.`baz>`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="http://foo.bar.%60baz">http://foo.bar.`baz</a>`</p>\n"""
            ]

        ,

        describe "example 330"
            [ test """```foo``\n""" <|
                \_ ->
                    """```foo``\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>```foo``</p>\n"""
            ]

        ,

        describe "example 331"
            [ test """`foo\n""" <|
                \_ ->
                    """`foo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>`foo</p>\n"""
            ]

        ,

        describe "example 332"
            [ test """`foo``bar``\n""" <|
                \_ ->
                    """`foo``bar``\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>`foo<code>bar</code></p>\n"""
            ]


        ]