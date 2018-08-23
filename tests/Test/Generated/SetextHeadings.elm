module Test.Generated.SetextHeadings exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Setext headings"
        [

        describe "example 50"
            [ test """Foo *bar*\n=========\n\nFoo *bar*\n---------\n""" <|
                \_ ->
                    """Foo *bar*\n=========\n\nFoo *bar*\n---------\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h1>Foo <em>bar</em></h1>\n<h2>Foo <em>bar</em></h2>\n"""
            ]

        ,

        describe "example 51"
            [ test """Foo *bar\nbaz*\n====\n""" <|
                \_ ->
                    """Foo *bar\nbaz*\n====\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h1>Foo <em>bar\nbaz</em></h1>\n"""
            ]

        ,

        describe "example 52"
            [ test """Foo\n-------------------------\n\nFoo\n=\n""" <|
                \_ ->
                    """Foo\n-------------------------\n\nFoo\n=\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h2>Foo</h2>\n<h1>Foo</h1>\n"""
            ]

        ,

        describe "example 53"
            [ test """   Foo\n---\n\n  Foo\n-----\n\n  Foo\n  ===\n""" <|
                \_ ->
                    """   Foo\n---\n\n  Foo\n-----\n\n  Foo\n  ===\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h2>Foo</h2>\n<h2>Foo</h2>\n<h1>Foo</h1>\n"""
            ]

        ,

        describe "example 54"
            [ test """    Foo\n    ---\n\n    Foo\n---\n""" <|
                \_ ->
                    """    Foo\n    ---\n\n    Foo\n---\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>Foo\n---\n\nFoo\n</code></pre>\n<hr />\n"""
            ]

        ,

        describe "example 55"
            [ test """Foo\n   ----      \n""" <|
                \_ ->
                    """Foo\n   ----      \n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h2>Foo</h2>\n"""
            ]

        ,

        describe "example 56"
            [ test """Foo\n    ---\n""" <|
                \_ ->
                    """Foo\n    ---\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo\n---</p>\n"""
            ]

        ,

        describe "example 57"
            [ test """Foo\n= =\n\nFoo\n--- -\n""" <|
                \_ ->
                    """Foo\n= =\n\nFoo\n--- -\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo\n= =</p>\n<p>Foo</p>\n<hr />\n"""
            ]

        ,

        describe "example 58"
            [ test """Foo  \n-----\n""" <|
                \_ ->
                    """Foo  \n-----\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h2>Foo</h2>\n"""
            ]

        ,

        describe "example 59"
            [ test """Foo\\\n----\n""" <|
                \_ ->
                    """Foo\\\n----\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h2>Foo\\</h2>\n"""
            ]

        ,

        describe "example 60"
            [ test """`Foo\n----\n`\n\n<a title="a lot\n---\nof dashes"/>\n""" <|
                \_ ->
                    """`Foo\n----\n`\n\n<a title="a lot\n---\nof dashes"/>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h2>`Foo</h2>\n<p>`</p>\n<h2>&lt;a title=&quot;a lot</h2>\n<p>of dashes&quot;/&gt;</p>\n"""
            ]

        ,

        describe "example 61"
            [ test """> Foo\n---\n""" <|
                \_ ->
                    """> Foo\n---\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<p>Foo</p>\n</blockquote>\n<hr />\n"""
            ]

        ,

        describe "example 62"
            [ test """> foo\nbar\n===\n""" <|
                \_ ->
                    """> foo\nbar\n===\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<p>foo\nbar\n===</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 63"
            [ test """- Foo\n---\n""" <|
                \_ ->
                    """- Foo\n---\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>Foo</li>\n</ul>\n<hr />\n"""
            ]

        ,

        describe "example 64"
            [ test """Foo\nBar\n---\n""" <|
                \_ ->
                    """Foo\nBar\n---\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h2>Foo\nBar</h2>\n"""
            ]

        ,

        describe "example 65"
            [ test """---\nFoo\n---\nBar\n---\nBaz\n""" <|
                \_ ->
                    """---\nFoo\n---\nBar\n---\nBaz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<hr />\n<h2>Foo</h2>\n<h2>Bar</h2>\n<p>Baz</p>\n"""
            ]

        ,

        describe "example 66"
            [ test """\n====\n""" <|
                \_ ->
                    """\n====\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>====</p>\n"""
            ]

        ,

        describe "example 67"
            [ test """---\n---\n""" <|
                \_ ->
                    """---\n---\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<hr />\n<hr />\n"""
            ]

        ,

        describe "example 68"
            [ test """- foo\n-----\n""" <|
                \_ ->
                    """- foo\n-----\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>foo</li>\n</ul>\n<hr />\n"""
            ]

        ,

        describe "example 69"
            [ test """    foo\n---\n""" <|
                \_ ->
                    """    foo\n---\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>foo\n</code></pre>\n<hr />\n"""
            ]

        ,

        describe "example 70"
            [ test """> foo\n-----\n""" <|
                \_ ->
                    """> foo\n-----\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<p>foo</p>\n</blockquote>\n<hr />\n"""
            ]

        ,

        describe "example 71"
            [ test """\\> foo\n------\n""" <|
                \_ ->
                    """\\> foo\n------\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h2>&gt; foo</h2>\n"""
            ]

        ,

        describe "example 72"
            [ test """Foo\n\nbar\n---\nbaz\n""" <|
                \_ ->
                    """Foo\n\nbar\n---\nbaz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo</p>\n<h2>bar</h2>\n<p>baz</p>\n"""
            ]

        ,

        describe "example 73"
            [ test """Foo\nbar\n\n---\n\nbaz\n""" <|
                \_ ->
                    """Foo\nbar\n\n---\n\nbaz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo\nbar</p>\n<hr />\n<p>baz</p>\n"""
            ]

        ,

        describe "example 74"
            [ test """Foo\nbar\n* * *\nbaz\n""" <|
                \_ ->
                    """Foo\nbar\n* * *\nbaz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo\nbar</p>\n<hr />\n<p>baz</p>\n"""
            ]

        ,

        describe "example 75"
            [ test """Foo\nbar\n\\---\nbaz\n""" <|
                \_ ->
                    """Foo\nbar\n\\---\nbaz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo\nbar\n---\nbaz</p>\n"""
            ]


        ]