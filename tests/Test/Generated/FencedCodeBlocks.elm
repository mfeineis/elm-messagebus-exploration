module Test.Generated.FencedCodeBlocks exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Fenced code blocks"
        [

        describe "example 88"
            [ test """```\n<\n >\n```\n""" <|
                \_ ->
                    """```\n<\n >\n```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>&lt;\n &gt;\n</code></pre>\n"""
            ]

        ,

        describe "example 89"
            [ test """~~~\n<\n >\n~~~\n""" <|
                \_ ->
                    """~~~\n<\n >\n~~~\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>&lt;\n &gt;\n</code></pre>\n"""
            ]

        ,

        describe "example 90"
            [ test """``\nfoo\n``\n""" <|
                \_ ->
                    """``\nfoo\n``\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>foo</code></p>\n"""
            ]

        ,

        describe "example 91"
            [ test """```\naaa\n~~~\n```\n""" <|
                \_ ->
                    """```\naaa\n~~~\n```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>aaa\n~~~\n</code></pre>\n"""
            ]

        ,

        describe "example 92"
            [ test """~~~\naaa\n```\n~~~\n""" <|
                \_ ->
                    """~~~\naaa\n```\n~~~\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>aaa\n```\n</code></pre>\n"""
            ]

        ,

        describe "example 93"
            [ test """````\naaa\n```\n``````\n""" <|
                \_ ->
                    """````\naaa\n```\n``````\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>aaa\n```\n</code></pre>\n"""
            ]

        ,

        describe "example 94"
            [ test """~~~~\naaa\n~~~\n~~~~\n""" <|
                \_ ->
                    """~~~~\naaa\n~~~\n~~~~\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>aaa\n~~~\n</code></pre>\n"""
            ]

        ,

        describe "example 95"
            [ test """```\n""" <|
                \_ ->
                    """```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code></code></pre>\n"""
            ]

        ,

        describe "example 96"
            [ test """`````\n\n```\naaa\n""" <|
                \_ ->
                    """`````\n\n```\naaa\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>\n```\naaa\n</code></pre>\n"""
            ]

        ,

        describe "example 97"
            [ test """> ```\n> aaa\n\nbbb\n""" <|
                \_ ->
                    """> ```\n> aaa\n\nbbb\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<pre><code>aaa\n</code></pre>\n</blockquote>\n<p>bbb</p>\n"""
            ]

        ,

        describe "example 98"
            [ test """```\n\n  \n```\n""" <|
                \_ ->
                    """```\n\n  \n```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>\n  \n</code></pre>\n"""
            ]

        ,

        describe "example 99"
            [ test """```\n```\n""" <|
                \_ ->
                    """```\n```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code></code></pre>\n"""
            ]

        ,

        describe "example 100"
            [ test """ ```\n aaa\naaa\n```\n""" <|
                \_ ->
                    """ ```\n aaa\naaa\n```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>aaa\naaa\n</code></pre>\n"""
            ]

        ,

        describe "example 101"
            [ test """  ```\naaa\n  aaa\naaa\n  ```\n""" <|
                \_ ->
                    """  ```\naaa\n  aaa\naaa\n  ```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>aaa\naaa\naaa\n</code></pre>\n"""
            ]

        ,

        describe "example 102"
            [ test """   ```\n   aaa\n    aaa\n  aaa\n   ```\n""" <|
                \_ ->
                    """   ```\n   aaa\n    aaa\n  aaa\n   ```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>aaa\n aaa\naaa\n</code></pre>\n"""
            ]

        ,

        describe "example 103"
            [ test """    ```\n    aaa\n    ```\n""" <|
                \_ ->
                    """    ```\n    aaa\n    ```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>```\naaa\n```\n</code></pre>\n"""
            ]

        ,

        describe "example 104"
            [ test """```\naaa\n  ```\n""" <|
                \_ ->
                    """```\naaa\n  ```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>aaa\n</code></pre>\n"""
            ]

        ,

        describe "example 105"
            [ test """   ```\naaa\n  ```\n""" <|
                \_ ->
                    """   ```\naaa\n  ```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>aaa\n</code></pre>\n"""
            ]

        ,

        describe "example 106"
            [ test """```\naaa\n    ```\n""" <|
                \_ ->
                    """```\naaa\n    ```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>aaa\n    ```\n</code></pre>\n"""
            ]

        ,

        describe "example 107"
            [ test """``` ```\naaa\n""" <|
                \_ ->
                    """``` ```\naaa\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code></code>\naaa</p>\n"""
            ]

        ,

        describe "example 108"
            [ test """~~~~~~\naaa\n~~~ ~~\n""" <|
                \_ ->
                    """~~~~~~\naaa\n~~~ ~~\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>aaa\n~~~ ~~\n</code></pre>\n"""
            ]

        ,

        describe "example 109"
            [ test """foo\n```\nbar\n```\nbaz\n""" <|
                \_ ->
                    """foo\n```\nbar\n```\nbaz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo</p>\n<pre><code>bar\n</code></pre>\n<p>baz</p>\n"""
            ]

        ,

        describe "example 110"
            [ test """foo\n---\n~~~\nbar\n~~~\n# baz\n""" <|
                \_ ->
                    """foo\n---\n~~~\nbar\n~~~\n# baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h2>foo</h2>\n<pre><code>bar\n</code></pre>\n<h1>baz</h1>\n"""
            ]

        ,

        describe "example 111"
            [ test """```ruby\ndef foo(x)\n  return 3\nend\n```\n""" <|
                \_ ->
                    """```ruby\ndef foo(x)\n  return 3\nend\n```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code class="language-ruby">def foo(x)\n  return 3\nend\n</code></pre>\n"""
            ]

        ,

        describe "example 112"
            [ test """~~~~    ruby startline=3 $%@#$\ndef foo(x)\n  return 3\nend\n~~~~~~~\n""" <|
                \_ ->
                    """~~~~    ruby startline=3 $%@#$\ndef foo(x)\n  return 3\nend\n~~~~~~~\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code class="language-ruby">def foo(x)\n  return 3\nend\n</code></pre>\n"""
            ]

        ,

        describe "example 113"
            [ test """````;\n````\n""" <|
                \_ ->
                    """````;\n````\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code class="language-;"></code></pre>\n"""
            ]

        ,

        describe "example 114"
            [ test """``` aa ```\nfoo\n""" <|
                \_ ->
                    """``` aa ```\nfoo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>aa</code>\nfoo</p>\n"""
            ]

        ,

        describe "example 115"
            [ test """```\n``` aaa\n```\n""" <|
                \_ ->
                    """```\n``` aaa\n```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>``` aaa\n</code></pre>\n"""
            ]


        ]