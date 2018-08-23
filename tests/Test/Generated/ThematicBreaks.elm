module Test.Generated.ThematicBreaks exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Thematic breaks"
        [

        describe "example 13"
            [ test """***\n---\n___\n""" <|
                \_ ->
                    """***\n---\n___\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<hr />\n<hr />\n<hr />\n"""
            ]

        ,

        describe "example 14"
            [ test """+++\n""" <|
                \_ ->
                    """+++\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>+++</p>\n"""
            ]

        ,

        describe "example 15"
            [ test """===\n""" <|
                \_ ->
                    """===\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>===</p>\n"""
            ]

        ,

        describe "example 16"
            [ test """--\n**\n__\n""" <|
                \_ ->
                    """--\n**\n__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>--\n**\n__</p>\n"""
            ]

        ,

        describe "example 17"
            [ test """ ***\n  ***\n   ***\n""" <|
                \_ ->
                    """ ***\n  ***\n   ***\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<hr />\n<hr />\n<hr />\n"""
            ]

        ,

        describe "example 18"
            [ test """    ***\n""" <|
                \_ ->
                    """    ***\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>***\n</code></pre>\n"""
            ]

        ,

        describe "example 19"
            [ test """Foo\n    ***\n""" <|
                \_ ->
                    """Foo\n    ***\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo\n***</p>\n"""
            ]

        ,

        describe "example 20"
            [ test """_____________________________________\n""" <|
                \_ ->
                    """_____________________________________\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<hr />\n"""
            ]

        ,

        describe "example 21"
            [ test """ - - -\n""" <|
                \_ ->
                    """ - - -\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<hr />\n"""
            ]

        ,

        describe "example 22"
            [ test """ **  * ** * ** * **\n""" <|
                \_ ->
                    """ **  * ** * ** * **\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<hr />\n"""
            ]

        ,

        describe "example 23"
            [ test """-     -      -      -\n""" <|
                \_ ->
                    """-     -      -      -\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<hr />\n"""
            ]

        ,

        describe "example 24"
            [ test """- - - -    \n""" <|
                \_ ->
                    """- - - -    \n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<hr />\n"""
            ]

        ,

        describe "example 25"
            [ test """_ _ _ _ a\n\na------\n\n---a---\n""" <|
                \_ ->
                    """_ _ _ _ a\n\na------\n\n---a---\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>_ _ _ _ a</p>\n<p>a------</p>\n<p>---a---</p>\n"""
            ]

        ,

        describe "example 26"
            [ test """ *-*\n""" <|
                \_ ->
                    """ *-*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>-</em></p>\n"""
            ]

        ,

        describe "example 27"
            [ test """- foo\n***\n- bar\n""" <|
                \_ ->
                    """- foo\n***\n- bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>foo</li>\n</ul>\n<hr />\n<ul>\n<li>bar</li>\n</ul>\n"""
            ]

        ,

        describe "example 28"
            [ test """Foo\n***\nbar\n""" <|
                \_ ->
                    """Foo\n***\nbar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo</p>\n<hr />\n<p>bar</p>\n"""
            ]

        ,

        describe "example 29"
            [ test """Foo\n---\nbar\n""" <|
                \_ ->
                    """Foo\n---\nbar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h2>Foo</h2>\n<p>bar</p>\n"""
            ]

        ,

        describe "example 30"
            [ test """* Foo\n* * *\n* Bar\n""" <|
                \_ ->
                    """* Foo\n* * *\n* Bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>Foo</li>\n</ul>\n<hr />\n<ul>\n<li>Bar</li>\n</ul>\n"""
            ]

        ,

        describe "example 31"
            [ test """- Foo\n- * * *\n""" <|
                \_ ->
                    """- Foo\n- * * *\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>Foo</li>\n<li>\n<hr />\n</li>\n</ul>\n"""
            ]


        ]