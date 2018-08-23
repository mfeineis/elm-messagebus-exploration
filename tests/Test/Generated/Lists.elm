module Test.Generated.Lists exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Lists"
        [

        describe "example 264"
            [ test """- foo\n- bar\n+ baz\n""" <|
                \_ ->
                    """- foo\n- bar\n+ baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>foo</li>\n<li>bar</li>\n</ul>\n<ul>\n<li>baz</li>\n</ul>\n"""
            ]

        ,

        describe "example 265"
            [ test """1. foo\n2. bar\n3) baz\n""" <|
                \_ ->
                    """1. foo\n2. bar\n3) baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>foo</li>\n<li>bar</li>\n</ol>\n<ol start="3">\n<li>baz</li>\n</ol>\n"""
            ]

        ,

        describe "example 266"
            [ test """Foo\n- bar\n- baz\n""" <|
                \_ ->
                    """Foo\n- bar\n- baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo</p>\n<ul>\n<li>bar</li>\n<li>baz</li>\n</ul>\n"""
            ]

        ,

        describe "example 267"
            [ test """The number of windows in my house is\n14.  The number of doors is 6.\n""" <|
                \_ ->
                    """The number of windows in my house is\n14.  The number of doors is 6.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>The number of windows in my house is\n14.  The number of doors is 6.</p>\n"""
            ]

        ,

        describe "example 268"
            [ test """The number of windows in my house is\n1.  The number of doors is 6.\n""" <|
                \_ ->
                    """The number of windows in my house is\n1.  The number of doors is 6.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>The number of windows in my house is</p>\n<ol>\n<li>The number of doors is 6.</li>\n</ol>\n"""
            ]

        ,

        describe "example 269"
            [ test """- foo\n\n- bar\n\n\n- baz\n""" <|
                \_ ->
                    """- foo\n\n- bar\n\n\n- baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>foo</p>\n</li>\n<li>\n<p>bar</p>\n</li>\n<li>\n<p>baz</p>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 270"
            [ test """- foo\n  - bar\n    - baz\n\n\n      bim\n""" <|
                \_ ->
                    """- foo\n  - bar\n    - baz\n\n\n      bim\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>foo\n<ul>\n<li>bar\n<ul>\n<li>\n<p>baz</p>\n<p>bim</p>\n</li>\n</ul>\n</li>\n</ul>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 271"
            [ test """- foo\n- bar\n\n<!-- -->\n\n- baz\n- bim\n""" <|
                \_ ->
                    """- foo\n- bar\n\n<!-- -->\n\n- baz\n- bim\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>foo</li>\n<li>bar</li>\n</ul>\n<!-- -->\n<ul>\n<li>baz</li>\n<li>bim</li>\n</ul>\n"""
            ]

        ,

        describe "example 272"
            [ test """-   foo\n\n    notcode\n\n-   foo\n\n<!-- -->\n\n    code\n""" <|
                \_ ->
                    """-   foo\n\n    notcode\n\n-   foo\n\n<!-- -->\n\n    code\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>foo</p>\n<p>notcode</p>\n</li>\n<li>\n<p>foo</p>\n</li>\n</ul>\n<!-- -->\n<pre><code>code\n</code></pre>\n"""
            ]

        ,

        describe "example 273"
            [ test """- a\n - b\n  - c\n   - d\n  - e\n - f\n- g\n""" <|
                \_ ->
                    """- a\n - b\n  - c\n   - d\n  - e\n - f\n- g\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>a</li>\n<li>b</li>\n<li>c</li>\n<li>d</li>\n<li>e</li>\n<li>f</li>\n<li>g</li>\n</ul>\n"""
            ]

        ,

        describe "example 274"
            [ test """1. a\n\n  2. b\n\n   3. c\n""" <|
                \_ ->
                    """1. a\n\n  2. b\n\n   3. c\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>\n<p>a</p>\n</li>\n<li>\n<p>b</p>\n</li>\n<li>\n<p>c</p>\n</li>\n</ol>\n"""
            ]

        ,

        describe "example 275"
            [ test """- a\n - b\n  - c\n   - d\n    - e\n""" <|
                \_ ->
                    """- a\n - b\n  - c\n   - d\n    - e\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>a</li>\n<li>b</li>\n<li>c</li>\n<li>d\n- e</li>\n</ul>\n"""
            ]

        ,

        describe "example 276"
            [ test """1. a\n\n  2. b\n\n    3. c\n""" <|
                \_ ->
                    """1. a\n\n  2. b\n\n    3. c\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>\n<p>a</p>\n</li>\n<li>\n<p>b</p>\n</li>\n</ol>\n<pre><code>3. c\n</code></pre>\n"""
            ]

        ,

        describe "example 277"
            [ test """- a\n- b\n\n- c\n""" <|
                \_ ->
                    """- a\n- b\n\n- c\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>a</p>\n</li>\n<li>\n<p>b</p>\n</li>\n<li>\n<p>c</p>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 278"
            [ test """* a\n*\n\n* c\n""" <|
                \_ ->
                    """* a\n*\n\n* c\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>a</p>\n</li>\n<li></li>\n<li>\n<p>c</p>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 279"
            [ test """- a\n- b\n\n  c\n- d\n""" <|
                \_ ->
                    """- a\n- b\n\n  c\n- d\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>a</p>\n</li>\n<li>\n<p>b</p>\n<p>c</p>\n</li>\n<li>\n<p>d</p>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 280"
            [ test """- a\n- b\n\n  [ref]: /url\n- d\n""" <|
                \_ ->
                    """- a\n- b\n\n  [ref]: /url\n- d\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>a</p>\n</li>\n<li>\n<p>b</p>\n</li>\n<li>\n<p>d</p>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 281"
            [ test """- a\n- ```\n  b\n\n\n  ```\n- c\n""" <|
                \_ ->
                    """- a\n- ```\n  b\n\n\n  ```\n- c\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>a</li>\n<li>\n<pre><code>b\n\n\n</code></pre>\n</li>\n<li>c</li>\n</ul>\n"""
            ]

        ,

        describe "example 282"
            [ test """- a\n  - b\n\n    c\n- d\n""" <|
                \_ ->
                    """- a\n  - b\n\n    c\n- d\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>a\n<ul>\n<li>\n<p>b</p>\n<p>c</p>\n</li>\n</ul>\n</li>\n<li>d</li>\n</ul>\n"""
            ]

        ,

        describe "example 283"
            [ test """* a\n  > b\n  >\n* c\n""" <|
                \_ ->
                    """* a\n  > b\n  >\n* c\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>a\n<blockquote>\n<p>b</p>\n</blockquote>\n</li>\n<li>c</li>\n</ul>\n"""
            ]

        ,

        describe "example 284"
            [ test """- a\n  > b\n  ```\n  c\n  ```\n- d\n""" <|
                \_ ->
                    """- a\n  > b\n  ```\n  c\n  ```\n- d\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>a\n<blockquote>\n<p>b</p>\n</blockquote>\n<pre><code>c\n</code></pre>\n</li>\n<li>d</li>\n</ul>\n"""
            ]

        ,

        describe "example 285"
            [ test """- a\n""" <|
                \_ ->
                    """- a\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>a</li>\n</ul>\n"""
            ]

        ,

        describe "example 286"
            [ test """- a\n  - b\n""" <|
                \_ ->
                    """- a\n  - b\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>a\n<ul>\n<li>b</li>\n</ul>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 287"
            [ test """1. ```\n   foo\n   ```\n\n   bar\n""" <|
                \_ ->
                    """1. ```\n   foo\n   ```\n\n   bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>\n<pre><code>foo\n</code></pre>\n<p>bar</p>\n</li>\n</ol>\n"""
            ]

        ,

        describe "example 288"
            [ test """* foo\n  * bar\n\n  baz\n""" <|
                \_ ->
                    """* foo\n  * bar\n\n  baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>foo</p>\n<ul>\n<li>bar</li>\n</ul>\n<p>baz</p>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 289"
            [ test """- a\n  - b\n  - c\n\n- d\n  - e\n  - f\n""" <|
                \_ ->
                    """- a\n  - b\n  - c\n\n- d\n  - e\n  - f\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>a</p>\n<ul>\n<li>b</li>\n<li>c</li>\n</ul>\n</li>\n<li>\n<p>d</p>\n<ul>\n<li>e</li>\n<li>f</li>\n</ul>\n</li>\n</ul>\n"""
            ]


        ]