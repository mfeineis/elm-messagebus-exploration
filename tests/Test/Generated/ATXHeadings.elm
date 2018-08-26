module Test.Generated.ATXHeadings exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "ATX headings"
        [

        Test.only <| describe "example 32"
            [ test """# foo\n## foo\n### foo\n#### foo\n##### foo\n###### foo\n""" <|
                \_ ->
                    """# foo\n## foo\n### foo\n#### foo\n##### foo\n###### foo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h1>foo</h1>\n<h2>foo</h2>\n<h3>foo</h3>\n<h4>foo</h4>\n<h5>foo</h5>\n<h6>foo</h6>\n"""
            ]

        ,

        describe "example 33"
            [ test """####### foo\n""" <|
                \_ ->
                    """####### foo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>####### foo</p>\n"""
            ]

        ,

        describe "example 34"
            [ test """#5 bolt\n\n#hashtag\n""" <|
                \_ ->
                    """#5 bolt\n\n#hashtag\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>#5 bolt</p>\n<p>#hashtag</p>\n"""
            ]

        ,

        describe "example 35"
            [ test """\\## foo\n""" <|
                \_ ->
                    """\\## foo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>## foo</p>\n"""
            ]

        ,

        describe "example 36"
            [ test """# foo *bar* \\*baz\\*\n""" <|
                \_ ->
                    """# foo *bar* \\*baz\\*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h1>foo <em>bar</em> *baz*</h1>\n"""
            ]

        ,

        describe "example 37"
            [ test """#                  foo                     \n""" <|
                \_ ->
                    """#                  foo                     \n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h1>foo</h1>\n"""
            ]

        ,

        describe "example 38"
            [ test """ ### foo\n  ## foo\n   # foo\n""" <|
                \_ ->
                    """ ### foo\n  ## foo\n   # foo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h3>foo</h3>\n<h2>foo</h2>\n<h1>foo</h1>\n"""
            ]

        ,

        describe "example 39"
            [ test """    # foo\n""" <|
                \_ ->
                    """    # foo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code># foo\n</code></pre>\n"""
            ]

        ,

        describe "example 40"
            [ test """foo\n    # bar\n""" <|
                \_ ->
                    """foo\n    # bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo\n# bar</p>\n"""
            ]

        ,

        describe "example 41"
            [ test """## foo ##\n  ###   bar    ###\n""" <|
                \_ ->
                    """## foo ##\n  ###   bar    ###\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h2>foo</h2>\n<h3>bar</h3>\n"""
            ]

        ,

        describe "example 42"
            [ test """# foo ##################################\n##### foo ##\n""" <|
                \_ ->
                    """# foo ##################################\n##### foo ##\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h1>foo</h1>\n<h5>foo</h5>\n"""
            ]

        ,

        describe "example 43"
            [ test """### foo ###     \n""" <|
                \_ ->
                    """### foo ###     \n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h3>foo</h3>\n"""
            ]

        ,

        describe "example 44"
            [ test """### foo ### b\n""" <|
                \_ ->
                    """### foo ### b\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h3>foo ### b</h3>\n"""
            ]

        ,

        describe "example 45"
            [ test """# foo#\n""" <|
                \_ ->
                    """# foo#\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h1>foo#</h1>\n"""
            ]

        ,

        describe "example 46"
            [ test """### foo \\###\n## foo #\\##\n# foo \\#\n""" <|
                \_ ->
                    """### foo \\###\n## foo #\\##\n# foo \\#\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h3>foo ###</h3>\n<h2>foo ###</h2>\n<h1>foo #</h1>\n"""
            ]

        ,

        describe "example 47"
            [ test """****\n## foo\n****\n""" <|
                \_ ->
                    """****\n## foo\n****\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<hr />\n<h2>foo</h2>\n<hr />\n"""
            ]

        ,

        describe "example 48"
            [ test """Foo bar\n# baz\nBar foo\n""" <|
                \_ ->
                    """Foo bar\n# baz\nBar foo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo bar</p>\n<h1>baz</h1>\n<p>Bar foo</p>\n"""
            ]

        ,

        describe "example 49"
            [ test """## \n#\n### ###\n""" <|
                \_ ->
                    """## \n#\n### ###\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h2></h2>\n<h1></h1>\n<h3></h3>\n"""
            ]


        ]
