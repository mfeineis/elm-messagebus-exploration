module Test.Generated.IndentedCodeBlocks exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Indented code blocks"
        [

        describe "example 76"
            [ test """    a simple\n      indented code block\n""" <|
                \_ ->
                    """    a simple\n      indented code block\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>a simple\n  indented code block\n</code></pre>\n"""
            ]

        ,

        describe "example 77"
            [ test """  - foo\n\n    bar\n""" <|
                \_ ->
                    """  - foo\n\n    bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>foo</p>\n<p>bar</p>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 78"
            [ test """1.  foo\n\n    - bar\n""" <|
                \_ ->
                    """1.  foo\n\n    - bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>\n<p>foo</p>\n<ul>\n<li>bar</li>\n</ul>\n</li>\n</ol>\n"""
            ]

        ,

        describe "example 79"
            [ test """    <a/>\n    *hi*\n\n    - one\n""" <|
                \_ ->
                    """    <a/>\n    *hi*\n\n    - one\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>&lt;a/&gt;\n*hi*\n\n- one\n</code></pre>\n"""
            ]

        ,

        describe "example 80"
            [ test """    chunk1\n\n    chunk2\n  \n \n \n    chunk3\n""" <|
                \_ ->
                    """    chunk1\n\n    chunk2\n  \n \n \n    chunk3\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>chunk1\n\nchunk2\n\n\n\nchunk3\n</code></pre>\n"""
            ]

        ,

        describe "example 81"
            [ test """    chunk1\n      \n      chunk2\n""" <|
                \_ ->
                    """    chunk1\n      \n      chunk2\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>chunk1\n  \n  chunk2\n</code></pre>\n"""
            ]

        ,

        describe "example 82"
            [ test """Foo\n    bar\n\n""" <|
                \_ ->
                    """Foo\n    bar\n\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo\nbar</p>\n"""
            ]

        ,

        describe "example 83"
            [ test """    foo\nbar\n""" <|
                \_ ->
                    """    foo\nbar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>foo\n</code></pre>\n<p>bar</p>\n"""
            ]

        ,

        describe "example 84"
            [ test """# Heading\n    foo\nHeading\n------\n    foo\n----\n""" <|
                \_ ->
                    """# Heading\n    foo\nHeading\n------\n    foo\n----\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h1>Heading</h1>\n<pre><code>foo\n</code></pre>\n<h2>Heading</h2>\n<pre><code>foo\n</code></pre>\n<hr />\n"""
            ]

        ,

        describe "example 85"
            [ test """        foo\n    bar\n""" <|
                \_ ->
                    """        foo\n    bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>    foo\nbar\n</code></pre>\n"""
            ]

        ,

        describe "example 86"
            [ test """\n    \n    foo\n    \n\n""" <|
                \_ ->
                    """\n    \n    foo\n    \n\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>foo\n</code></pre>\n"""
            ]

        ,

        describe "example 87"
            [ test """    foo  \n""" <|
                \_ ->
                    """    foo  \n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>foo  \n</code></pre>\n"""
            ]


        ]