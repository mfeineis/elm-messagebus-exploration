module Test.Generated.BackslashEscapes exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Backslash escapes"
        [

        describe "example 291"
            [ test """\\!\\"\\#\\$\\%\\&\\'\\(\\)\\*\\+\\,\\-\\.\\/\\:\\;\\<\\=\\>\\?\\@\\[\\\\\\]\\^\\_\\`\\{\\|\\}\\~\n""" <|
                \_ ->
                    """\\!\\"\\#\\$\\%\\&\\'\\(\\)\\*\\+\\,\\-\\.\\/\\:\\;\\<\\=\\>\\?\\@\\[\\\\\\]\\^\\_\\`\\{\\|\\}\\~\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>!&quot;#$%&amp;'()*+,-./:;&lt;=&gt;?@[\\]^_`{|}~</p>\n"""
            ]

        ,

        describe "example 292"
            [ test """\\\t\\A\\a\\ \\3\\φ\\«\n""" <|
                \_ ->
                    """\\\t\\A\\a\\ \\3\\φ\\«\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>\\\t\\A\\a\\ \\3\\φ\\«</p>\n"""
            ]

        ,

        describe "example 293"
            [ test """\\*not emphasized*\n\\<br/> not a tag\n\\[not a link](/foo)\n\\`not code`\n1\\. not a list\n\\* not a list\n\\# not a heading\n\\[foo]: /url "not a reference"\n""" <|
                \_ ->
                    """\\*not emphasized*\n\\<br/> not a tag\n\\[not a link](/foo)\n\\`not code`\n1\\. not a list\n\\* not a list\n\\# not a heading\n\\[foo]: /url "not a reference"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>*not emphasized*\n&lt;br/&gt; not a tag\n[not a link](/foo)\n`not code`\n1. not a list\n* not a list\n# not a heading\n[foo]: /url &quot;not a reference&quot;</p>\n"""
            ]

        ,

        describe "example 294"
            [ test """\\\\*emphasis*\n""" <|
                \_ ->
                    """\\\\*emphasis*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>\\<em>emphasis</em></p>\n"""
            ]

        ,

        describe "example 295"
            [ test """foo\\\nbar\n""" <|
                \_ ->
                    """foo\\\nbar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo<br />\nbar</p>\n"""
            ]

        ,

        describe "example 296"
            [ test """`` \\[\\` ``\n""" <|
                \_ ->
                    """`` \\[\\` ``\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>\\[\\`</code></p>\n"""
            ]

        ,

        describe "example 297"
            [ test """    \\[\\]\n""" <|
                \_ ->
                    """    \\[\\]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>\\[\\]\n</code></pre>\n"""
            ]

        ,

        describe "example 298"
            [ test """~~~\n\\[\\]\n~~~\n""" <|
                \_ ->
                    """~~~\n\\[\\]\n~~~\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>\\[\\]\n</code></pre>\n"""
            ]

        ,

        describe "example 299"
            [ test """<http://example.com?find=\\*>\n""" <|
                \_ ->
                    """<http://example.com?find=\\*>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="http://example.com?find=%5C*">http://example.com?find=\\*</a></p>\n"""
            ]

        ,

        describe "example 300"
            [ test """<a href="/bar\\/)">\n""" <|
                \_ ->
                    """<a href="/bar\\/)">\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<a href="/bar\\/)">\n"""
            ]

        ,

        describe "example 301"
            [ test """[foo](/bar\\* "ti\\*tle")\n""" <|
                \_ ->
                    """[foo](/bar\\* "ti\\*tle")\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/bar*" title="ti*tle">foo</a></p>\n"""
            ]

        ,

        describe "example 302"
            [ test """[foo]\n\n[foo]: /bar\\* "ti\\*tle"\n""" <|
                \_ ->
                    """[foo]\n\n[foo]: /bar\\* "ti\\*tle"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/bar*" title="ti*tle">foo</a></p>\n"""
            ]

        ,

        describe "example 303"
            [ test """``` foo\\+bar\nfoo\n```\n""" <|
                \_ ->
                    """``` foo\\+bar\nfoo\n```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code class="language-foo+bar">foo\n</code></pre>\n"""
            ]


        ]