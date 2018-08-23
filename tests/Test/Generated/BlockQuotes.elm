module Test.Generated.BlockQuotes exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Block quotes"
        [

        describe "example 191"
            [ test """> # Foo\n> bar\n> baz\n""" <|
                \_ ->
                    """> # Foo\n> bar\n> baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<h1>Foo</h1>\n<p>bar\nbaz</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 192"
            [ test """># Foo\n>bar\n> baz\n""" <|
                \_ ->
                    """># Foo\n>bar\n> baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<h1>Foo</h1>\n<p>bar\nbaz</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 193"
            [ test """   > # Foo\n   > bar\n > baz\n""" <|
                \_ ->
                    """   > # Foo\n   > bar\n > baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<h1>Foo</h1>\n<p>bar\nbaz</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 194"
            [ test """    > # Foo\n    > bar\n    > baz\n""" <|
                \_ ->
                    """    > # Foo\n    > bar\n    > baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>&gt; # Foo\n&gt; bar\n&gt; baz\n</code></pre>\n"""
            ]

        ,

        describe "example 195"
            [ test """> # Foo\n> bar\nbaz\n""" <|
                \_ ->
                    """> # Foo\n> bar\nbaz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<h1>Foo</h1>\n<p>bar\nbaz</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 196"
            [ test """> bar\nbaz\n> foo\n""" <|
                \_ ->
                    """> bar\nbaz\n> foo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<p>bar\nbaz\nfoo</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 197"
            [ test """> foo\n---\n""" <|
                \_ ->
                    """> foo\n---\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<p>foo</p>\n</blockquote>\n<hr />\n"""
            ]

        ,

        describe "example 198"
            [ test """> - foo\n- bar\n""" <|
                \_ ->
                    """> - foo\n- bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<ul>\n<li>foo</li>\n</ul>\n</blockquote>\n<ul>\n<li>bar</li>\n</ul>\n"""
            ]

        ,

        describe "example 199"
            [ test """>     foo\n    bar\n""" <|
                \_ ->
                    """>     foo\n    bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<pre><code>foo\n</code></pre>\n</blockquote>\n<pre><code>bar\n</code></pre>\n"""
            ]

        ,

        describe "example 200"
            [ test """> ```\nfoo\n```\n""" <|
                \_ ->
                    """> ```\nfoo\n```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<pre><code></code></pre>\n</blockquote>\n<p>foo</p>\n<pre><code></code></pre>\n"""
            ]

        ,

        describe "example 201"
            [ test """> foo\n    - bar\n""" <|
                \_ ->
                    """> foo\n    - bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<p>foo\n- bar</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 202"
            [ test """>\n""" <|
                \_ ->
                    """>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n</blockquote>\n"""
            ]

        ,

        describe "example 203"
            [ test """>\n>  \n> \n""" <|
                \_ ->
                    """>\n>  \n> \n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n</blockquote>\n"""
            ]

        ,

        describe "example 204"
            [ test """>\n> foo\n>  \n""" <|
                \_ ->
                    """>\n> foo\n>  \n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<p>foo</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 205"
            [ test """> foo\n\n> bar\n""" <|
                \_ ->
                    """> foo\n\n> bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<p>foo</p>\n</blockquote>\n<blockquote>\n<p>bar</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 206"
            [ test """> foo\n> bar\n""" <|
                \_ ->
                    """> foo\n> bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<p>foo\nbar</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 207"
            [ test """> foo\n>\n> bar\n""" <|
                \_ ->
                    """> foo\n>\n> bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<p>foo</p>\n<p>bar</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 208"
            [ test """foo\n> bar\n""" <|
                \_ ->
                    """foo\n> bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo</p>\n<blockquote>\n<p>bar</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 209"
            [ test """> aaa\n***\n> bbb\n""" <|
                \_ ->
                    """> aaa\n***\n> bbb\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<p>aaa</p>\n</blockquote>\n<hr />\n<blockquote>\n<p>bbb</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 210"
            [ test """> bar\nbaz\n""" <|
                \_ ->
                    """> bar\nbaz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<p>bar\nbaz</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 211"
            [ test """> bar\n\nbaz\n""" <|
                \_ ->
                    """> bar\n\nbaz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<p>bar</p>\n</blockquote>\n<p>baz</p>\n"""
            ]

        ,

        describe "example 212"
            [ test """> bar\n>\nbaz\n""" <|
                \_ ->
                    """> bar\n>\nbaz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<p>bar</p>\n</blockquote>\n<p>baz</p>\n"""
            ]

        ,

        describe "example 213"
            [ test """> > > foo\nbar\n""" <|
                \_ ->
                    """> > > foo\nbar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<blockquote>\n<blockquote>\n<p>foo\nbar</p>\n</blockquote>\n</blockquote>\n</blockquote>\n"""
            ]

        ,

        describe "example 214"
            [ test """>>> foo\n> bar\n>>baz\n""" <|
                \_ ->
                    """>>> foo\n> bar\n>>baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<blockquote>\n<blockquote>\n<p>foo\nbar\nbaz</p>\n</blockquote>\n</blockquote>\n</blockquote>\n"""
            ]

        ,

        describe "example 215"
            [ test """>     code\n\n>    not code\n""" <|
                \_ ->
                    """>     code\n\n>    not code\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<pre><code>code\n</code></pre>\n</blockquote>\n<blockquote>\n<p>not code</p>\n</blockquote>\n"""
            ]


        ]