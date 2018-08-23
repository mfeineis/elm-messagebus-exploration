module Test.Generated.Tabs exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Tabs"
        [

        describe "example 1"
            [ test """\tfoo\tbaz\t\tbim\n""" <|
                \_ ->
                    """\tfoo\tbaz\t\tbim\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>foo\tbaz\t\tbim\n</code></pre>\n"""
            ]

        ,

        describe "example 2"
            [ test """  \tfoo\tbaz\t\tbim\n""" <|
                \_ ->
                    """  \tfoo\tbaz\t\tbim\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>foo\tbaz\t\tbim\n</code></pre>\n"""
            ]

        ,

        describe "example 3"
            [ test """    a\ta\n    ὐ\ta\n""" <|
                \_ ->
                    """    a\ta\n    ὐ\ta\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>a\ta\nὐ\ta\n</code></pre>\n"""
            ]

        ,

        describe "example 4"
            [ test """  - foo\n\n\tbar\n""" <|
                \_ ->
                    """  - foo\n\n\tbar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>foo</p>\n<p>bar</p>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 5"
            [ test """- foo\n\n\t\tbar\n""" <|
                \_ ->
                    """- foo\n\n\t\tbar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>foo</p>\n<pre><code>  bar\n</code></pre>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 6"
            [ test """>\t\tfoo\n""" <|
                \_ ->
                    """>\t\tfoo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<pre><code>  foo\n</code></pre>\n</blockquote>\n"""
            ]

        ,

        describe "example 7"
            [ test """-\t\tfoo\n""" <|
                \_ ->
                    """-\t\tfoo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<pre><code>  foo\n</code></pre>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 8"
            [ test """    foo\n\tbar\n""" <|
                \_ ->
                    """    foo\n\tbar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>foo\nbar\n</code></pre>\n"""
            ]

        ,

        describe "example 9"
            [ test """ - foo\n   - bar\n\t - baz\n""" <|
                \_ ->
                    """ - foo\n   - bar\n\t - baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>foo\n<ul>\n<li>bar\n<ul>\n<li>baz</li>\n</ul>\n</li>\n</ul>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 10"
            [ test """#\tFoo\n""" <|
                \_ ->
                    """#\tFoo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h1>Foo</h1>\n"""
            ]

        ,

        describe "example 11"
            [ test """*\t*\t*\t\n""" <|
                \_ ->
                    """*\t*\t*\t\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<hr />\n"""
            ]


        ]