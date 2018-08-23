module Test.Generated.ListItems exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "List items"
        [

        describe "example 216"
            [ test """A paragraph\nwith two lines.\n\n    indented code\n\n> A block quote.\n""" <|
                \_ ->
                    """A paragraph\nwith two lines.\n\n    indented code\n\n> A block quote.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>A paragraph\nwith two lines.</p>\n<pre><code>indented code\n</code></pre>\n<blockquote>\n<p>A block quote.</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 217"
            [ test """1.  A paragraph\n    with two lines.\n\n        indented code\n\n    > A block quote.\n""" <|
                \_ ->
                    """1.  A paragraph\n    with two lines.\n\n        indented code\n\n    > A block quote.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>\n<p>A paragraph\nwith two lines.</p>\n<pre><code>indented code\n</code></pre>\n<blockquote>\n<p>A block quote.</p>\n</blockquote>\n</li>\n</ol>\n"""
            ]

        ,

        describe "example 218"
            [ test """- one\n\n two\n""" <|
                \_ ->
                    """- one\n\n two\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>one</li>\n</ul>\n<p>two</p>\n"""
            ]

        ,

        describe "example 219"
            [ test """- one\n\n  two\n""" <|
                \_ ->
                    """- one\n\n  two\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>one</p>\n<p>two</p>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 220"
            [ test """ -    one\n\n     two\n""" <|
                \_ ->
                    """ -    one\n\n     two\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>one</li>\n</ul>\n<pre><code> two\n</code></pre>\n"""
            ]

        ,

        describe "example 221"
            [ test """ -    one\n\n      two\n""" <|
                \_ ->
                    """ -    one\n\n      two\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>one</p>\n<p>two</p>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 222"
            [ test """   > > 1.  one\n>>\n>>     two\n""" <|
                \_ ->
                    """   > > 1.  one\n>>\n>>     two\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<blockquote>\n<ol>\n<li>\n<p>one</p>\n<p>two</p>\n</li>\n</ol>\n</blockquote>\n</blockquote>\n"""
            ]

        ,

        describe "example 223"
            [ test """>>- one\n>>\n  >  > two\n""" <|
                \_ ->
                    """>>- one\n>>\n  >  > two\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<blockquote>\n<ul>\n<li>one</li>\n</ul>\n<p>two</p>\n</blockquote>\n</blockquote>\n"""
            ]

        ,

        describe "example 224"
            [ test """-one\n\n2.two\n""" <|
                \_ ->
                    """-one\n\n2.two\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>-one</p>\n<p>2.two</p>\n"""
            ]

        ,

        describe "example 225"
            [ test """- foo\n\n\n  bar\n""" <|
                \_ ->
                    """- foo\n\n\n  bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>foo</p>\n<p>bar</p>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 226"
            [ test """1.  foo\n\n    ```\n    bar\n    ```\n\n    baz\n\n    > bam\n""" <|
                \_ ->
                    """1.  foo\n\n    ```\n    bar\n    ```\n\n    baz\n\n    > bam\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>\n<p>foo</p>\n<pre><code>bar\n</code></pre>\n<p>baz</p>\n<blockquote>\n<p>bam</p>\n</blockquote>\n</li>\n</ol>\n"""
            ]

        ,

        describe "example 227"
            [ test """- Foo\n\n      bar\n\n\n      baz\n""" <|
                \_ ->
                    """- Foo\n\n      bar\n\n\n      baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>Foo</p>\n<pre><code>bar\n\n\nbaz\n</code></pre>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 228"
            [ test """123456789. ok\n""" <|
                \_ ->
                    """123456789. ok\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol start="123456789">\n<li>ok</li>\n</ol>\n"""
            ]

        ,

        describe "example 229"
            [ test """1234567890. not ok\n""" <|
                \_ ->
                    """1234567890. not ok\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>1234567890. not ok</p>\n"""
            ]

        ,

        describe "example 230"
            [ test """0. ok\n""" <|
                \_ ->
                    """0. ok\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol start="0">\n<li>ok</li>\n</ol>\n"""
            ]

        ,

        describe "example 231"
            [ test """003. ok\n""" <|
                \_ ->
                    """003. ok\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol start="3">\n<li>ok</li>\n</ol>\n"""
            ]

        ,

        describe "example 232"
            [ test """-1. not ok\n""" <|
                \_ ->
                    """-1. not ok\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>-1. not ok</p>\n"""
            ]

        ,

        describe "example 233"
            [ test """- foo\n\n      bar\n""" <|
                \_ ->
                    """- foo\n\n      bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>foo</p>\n<pre><code>bar\n</code></pre>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 234"
            [ test """  10.  foo\n\n           bar\n""" <|
                \_ ->
                    """  10.  foo\n\n           bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol start="10">\n<li>\n<p>foo</p>\n<pre><code>bar\n</code></pre>\n</li>\n</ol>\n"""
            ]

        ,

        describe "example 235"
            [ test """    indented code\n\nparagraph\n\n    more code\n""" <|
                \_ ->
                    """    indented code\n\nparagraph\n\n    more code\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>indented code\n</code></pre>\n<p>paragraph</p>\n<pre><code>more code\n</code></pre>\n"""
            ]

        ,

        describe "example 236"
            [ test """1.     indented code\n\n   paragraph\n\n       more code\n""" <|
                \_ ->
                    """1.     indented code\n\n   paragraph\n\n       more code\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>\n<pre><code>indented code\n</code></pre>\n<p>paragraph</p>\n<pre><code>more code\n</code></pre>\n</li>\n</ol>\n"""
            ]

        ,

        describe "example 237"
            [ test """1.      indented code\n\n   paragraph\n\n       more code\n""" <|
                \_ ->
                    """1.      indented code\n\n   paragraph\n\n       more code\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>\n<pre><code> indented code\n</code></pre>\n<p>paragraph</p>\n<pre><code>more code\n</code></pre>\n</li>\n</ol>\n"""
            ]

        ,

        describe "example 238"
            [ test """   foo\n\nbar\n""" <|
                \_ ->
                    """   foo\n\nbar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo</p>\n<p>bar</p>\n"""
            ]

        ,

        describe "example 239"
            [ test """-    foo\n\n  bar\n""" <|
                \_ ->
                    """-    foo\n\n  bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>foo</li>\n</ul>\n<p>bar</p>\n"""
            ]

        ,

        describe "example 240"
            [ test """-  foo\n\n   bar\n""" <|
                \_ ->
                    """-  foo\n\n   bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<p>foo</p>\n<p>bar</p>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 241"
            [ test """-\n  foo\n-\n  ```\n  bar\n  ```\n-\n      baz\n""" <|
                \_ ->
                    """-\n  foo\n-\n  ```\n  bar\n  ```\n-\n      baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>foo</li>\n<li>\n<pre><code>bar\n</code></pre>\n</li>\n<li>\n<pre><code>baz\n</code></pre>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 242"
            [ test """-   \n  foo\n""" <|
                \_ ->
                    """-   \n  foo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>foo</li>\n</ul>\n"""
            ]

        ,

        describe "example 243"
            [ test """-\n\n  foo\n""" <|
                \_ ->
                    """-\n\n  foo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li></li>\n</ul>\n<p>foo</p>\n"""
            ]

        ,

        describe "example 244"
            [ test """- foo\n-\n- bar\n""" <|
                \_ ->
                    """- foo\n-\n- bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>foo</li>\n<li></li>\n<li>bar</li>\n</ul>\n"""
            ]

        ,

        describe "example 245"
            [ test """- foo\n-   \n- bar\n""" <|
                \_ ->
                    """- foo\n-   \n- bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>foo</li>\n<li></li>\n<li>bar</li>\n</ul>\n"""
            ]

        ,

        describe "example 246"
            [ test """1. foo\n2.\n3. bar\n""" <|
                \_ ->
                    """1. foo\n2.\n3. bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>foo</li>\n<li></li>\n<li>bar</li>\n</ol>\n"""
            ]

        ,

        describe "example 247"
            [ test """*\n""" <|
                \_ ->
                    """*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li></li>\n</ul>\n"""
            ]

        ,

        describe "example 248"
            [ test """foo\n*\n\nfoo\n1.\n""" <|
                \_ ->
                    """foo\n*\n\nfoo\n1.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo\n*</p>\n<p>foo\n1.</p>\n"""
            ]

        ,

        describe "example 249"
            [ test """ 1.  A paragraph\n     with two lines.\n\n         indented code\n\n     > A block quote.\n""" <|
                \_ ->
                    """ 1.  A paragraph\n     with two lines.\n\n         indented code\n\n     > A block quote.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>\n<p>A paragraph\nwith two lines.</p>\n<pre><code>indented code\n</code></pre>\n<blockquote>\n<p>A block quote.</p>\n</blockquote>\n</li>\n</ol>\n"""
            ]

        ,

        describe "example 250"
            [ test """  1.  A paragraph\n      with two lines.\n\n          indented code\n\n      > A block quote.\n""" <|
                \_ ->
                    """  1.  A paragraph\n      with two lines.\n\n          indented code\n\n      > A block quote.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>\n<p>A paragraph\nwith two lines.</p>\n<pre><code>indented code\n</code></pre>\n<blockquote>\n<p>A block quote.</p>\n</blockquote>\n</li>\n</ol>\n"""
            ]

        ,

        describe "example 251"
            [ test """   1.  A paragraph\n       with two lines.\n\n           indented code\n\n       > A block quote.\n""" <|
                \_ ->
                    """   1.  A paragraph\n       with two lines.\n\n           indented code\n\n       > A block quote.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>\n<p>A paragraph\nwith two lines.</p>\n<pre><code>indented code\n</code></pre>\n<blockquote>\n<p>A block quote.</p>\n</blockquote>\n</li>\n</ol>\n"""
            ]

        ,

        describe "example 252"
            [ test """    1.  A paragraph\n        with two lines.\n\n            indented code\n\n        > A block quote.\n""" <|
                \_ ->
                    """    1.  A paragraph\n        with two lines.\n\n            indented code\n\n        > A block quote.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>1.  A paragraph\n    with two lines.\n\n        indented code\n\n    &gt; A block quote.\n</code></pre>\n"""
            ]

        ,

        describe "example 253"
            [ test """  1.  A paragraph\nwith two lines.\n\n          indented code\n\n      > A block quote.\n""" <|
                \_ ->
                    """  1.  A paragraph\nwith two lines.\n\n          indented code\n\n      > A block quote.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>\n<p>A paragraph\nwith two lines.</p>\n<pre><code>indented code\n</code></pre>\n<blockquote>\n<p>A block quote.</p>\n</blockquote>\n</li>\n</ol>\n"""
            ]

        ,

        describe "example 254"
            [ test """  1.  A paragraph\n    with two lines.\n""" <|
                \_ ->
                    """  1.  A paragraph\n    with two lines.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>A paragraph\nwith two lines.</li>\n</ol>\n"""
            ]

        ,

        describe "example 255"
            [ test """> 1. > Blockquote\ncontinued here.\n""" <|
                \_ ->
                    """> 1. > Blockquote\ncontinued here.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<ol>\n<li>\n<blockquote>\n<p>Blockquote\ncontinued here.</p>\n</blockquote>\n</li>\n</ol>\n</blockquote>\n"""
            ]

        ,

        describe "example 256"
            [ test """> 1. > Blockquote\n> continued here.\n""" <|
                \_ ->
                    """> 1. > Blockquote\n> continued here.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<ol>\n<li>\n<blockquote>\n<p>Blockquote\ncontinued here.</p>\n</blockquote>\n</li>\n</ol>\n</blockquote>\n"""
            ]

        ,

        describe "example 257"
            [ test """- foo\n  - bar\n    - baz\n      - boo\n""" <|
                \_ ->
                    """- foo\n  - bar\n    - baz\n      - boo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>foo\n<ul>\n<li>bar\n<ul>\n<li>baz\n<ul>\n<li>boo</li>\n</ul>\n</li>\n</ul>\n</li>\n</ul>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 258"
            [ test """- foo\n - bar\n  - baz\n   - boo\n""" <|
                \_ ->
                    """- foo\n - bar\n  - baz\n   - boo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>foo</li>\n<li>bar</li>\n<li>baz</li>\n<li>boo</li>\n</ul>\n"""
            ]

        ,

        describe "example 259"
            [ test """10) foo\n    - bar\n""" <|
                \_ ->
                    """10) foo\n    - bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol start="10">\n<li>foo\n<ul>\n<li>bar</li>\n</ul>\n</li>\n</ol>\n"""
            ]

        ,

        describe "example 260"
            [ test """10) foo\n   - bar\n""" <|
                \_ ->
                    """10) foo\n   - bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol start="10">\n<li>foo</li>\n</ol>\n<ul>\n<li>bar</li>\n</ul>\n"""
            ]

        ,

        describe "example 261"
            [ test """- - foo\n""" <|
                \_ ->
                    """- - foo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<ul>\n<li>foo</li>\n</ul>\n</li>\n</ul>\n"""
            ]

        ,

        describe "example 262"
            [ test """1. - 2. foo\n""" <|
                \_ ->
                    """1. - 2. foo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ol>\n<li>\n<ul>\n<li>\n<ol start="2">\n<li>foo</li>\n</ol>\n</li>\n</ul>\n</li>\n</ol>\n"""
            ]

        ,

        describe "example 263"
            [ test """- # Foo\n- Bar\n  ---\n  baz\n""" <|
                \_ ->
                    """- # Foo\n- Bar\n  ---\n  baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<h1>Foo</h1>\n</li>\n<li>\n<h2>Bar</h2>\nbaz</li>\n</ul>\n"""
            ]


        ]