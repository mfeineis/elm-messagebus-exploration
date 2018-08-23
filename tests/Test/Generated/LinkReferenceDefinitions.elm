module Test.Generated.LinkReferenceDefinitions exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Link reference definitions"
        [

        describe "example 159"
            [ test """[foo]: /url "title"\n\n[foo]\n""" <|
                \_ ->
                    """[foo]: /url "title"\n\n[foo]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url" title="title">foo</a></p>\n"""
            ]

        ,

        describe "example 160"
            [ test """   [foo]: \n      /url  \n           'the title'  \n\n[foo]\n""" <|
                \_ ->
                    """   [foo]: \n      /url  \n           'the title'  \n\n[foo]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url" title="the title">foo</a></p>\n"""
            ]

        ,

        describe "example 161"
            [ test """[Foo*bar\\]]:my_(url) 'title (with parens)'\n\n[Foo*bar\\]]\n""" <|
                \_ ->
                    """[Foo*bar\\]]:my_(url) 'title (with parens)'\n\n[Foo*bar\\]]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="my_(url)" title="title (with parens)">Foo*bar]</a></p>\n"""
            ]

        ,

        describe "example 162"
            [ test """[Foo bar]:\n<my url>\n'title'\n\n[Foo bar]\n""" <|
                \_ ->
                    """[Foo bar]:\n<my url>\n'title'\n\n[Foo bar]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="my%20url" title="title">Foo bar</a></p>\n"""
            ]

        ,

        describe "example 163"
            [ test """[foo]: /url '\ntitle\nline1\nline2\n'\n\n[foo]\n""" <|
                \_ ->
                    """[foo]: /url '\ntitle\nline1\nline2\n'\n\n[foo]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url" title="\ntitle\nline1\nline2\n">foo</a></p>\n"""
            ]

        ,

        describe "example 164"
            [ test """[foo]: /url 'title\n\nwith blank line'\n\n[foo]\n""" <|
                \_ ->
                    """[foo]: /url 'title\n\nwith blank line'\n\n[foo]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo]: /url 'title</p>\n<p>with blank line'</p>\n<p>[foo]</p>\n"""
            ]

        ,

        describe "example 165"
            [ test """[foo]:\n/url\n\n[foo]\n""" <|
                \_ ->
                    """[foo]:\n/url\n\n[foo]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url">foo</a></p>\n"""
            ]

        ,

        describe "example 166"
            [ test """[foo]:\n\n[foo]\n""" <|
                \_ ->
                    """[foo]:\n\n[foo]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo]:</p>\n<p>[foo]</p>\n"""
            ]

        ,

        describe "example 167"
            [ test """[foo]: /url\\bar\\*baz "foo\\"bar\\baz"\n\n[foo]\n""" <|
                \_ ->
                    """[foo]: /url\\bar\\*baz "foo\\"bar\\baz"\n\n[foo]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url%5Cbar*baz" title="foo&quot;bar\\baz">foo</a></p>\n"""
            ]

        ,

        describe "example 168"
            [ test """[foo]\n\n[foo]: url\n""" <|
                \_ ->
                    """[foo]\n\n[foo]: url\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="url">foo</a></p>\n"""
            ]

        ,

        describe "example 169"
            [ test """[foo]\n\n[foo]: first\n[foo]: second\n""" <|
                \_ ->
                    """[foo]\n\n[foo]: first\n[foo]: second\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="first">foo</a></p>\n"""
            ]

        ,

        describe "example 170"
            [ test """[FOO]: /url\n\n[Foo]\n""" <|
                \_ ->
                    """[FOO]: /url\n\n[Foo]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url">Foo</a></p>\n"""
            ]

        ,

        describe "example 171"
            [ test """[ΑΓΩ]: /φου\n\n[αγω]\n""" <|
                \_ ->
                    """[ΑΓΩ]: /φου\n\n[αγω]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/%CF%86%CE%BF%CF%85">αγω</a></p>\n"""
            ]

        ,

        describe "example 172"
            [ test """[foo]: /url\n""" <|
                \_ ->
                    """[foo]: /url\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """"""
            ]

        ,

        describe "example 173"
            [ test """[\nfoo\n]: /url\nbar\n""" <|
                \_ ->
                    """[\nfoo\n]: /url\nbar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>bar</p>\n"""
            ]

        ,

        describe "example 174"
            [ test """[foo]: /url "title" ok\n""" <|
                \_ ->
                    """[foo]: /url "title" ok\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo]: /url &quot;title&quot; ok</p>\n"""
            ]

        ,

        describe "example 175"
            [ test """[foo]: /url\n"title" ok\n""" <|
                \_ ->
                    """[foo]: /url\n"title" ok\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&quot;title&quot; ok</p>\n"""
            ]

        ,

        describe "example 176"
            [ test """    [foo]: /url "title"\n\n[foo]\n""" <|
                \_ ->
                    """    [foo]: /url "title"\n\n[foo]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>[foo]: /url &quot;title&quot;\n</code></pre>\n<p>[foo]</p>\n"""
            ]

        ,

        describe "example 177"
            [ test """```\n[foo]: /url\n```\n\n[foo]\n""" <|
                \_ ->
                    """```\n[foo]: /url\n```\n\n[foo]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>[foo]: /url\n</code></pre>\n<p>[foo]</p>\n"""
            ]

        ,

        describe "example 178"
            [ test """Foo\n[bar]: /baz\n\n[bar]\n""" <|
                \_ ->
                    """Foo\n[bar]: /baz\n\n[bar]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo\n[bar]: /baz</p>\n<p>[bar]</p>\n"""
            ]

        ,

        describe "example 179"
            [ test """# [Foo]\n[foo]: /url\n> bar\n""" <|
                \_ ->
                    """# [Foo]\n[foo]: /url\n> bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h1><a href="/url">Foo</a></h1>\n<blockquote>\n<p>bar</p>\n</blockquote>\n"""
            ]

        ,

        describe "example 180"
            [ test """[foo]: /foo-url "foo"\n[bar]: /bar-url\n  "bar"\n[baz]: /baz-url\n\n[foo],\n[bar],\n[baz]\n""" <|
                \_ ->
                    """[foo]: /foo-url "foo"\n[bar]: /bar-url\n  "bar"\n[baz]: /baz-url\n\n[foo],\n[bar],\n[baz]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/foo-url" title="foo">foo</a>,\n<a href="/bar-url" title="bar">bar</a>,\n<a href="/baz-url">baz</a></p>\n"""
            ]

        ,

        describe "example 181"
            [ test """[foo]\n\n> [foo]: /url\n""" <|
                \_ ->
                    """[foo]\n\n> [foo]: /url\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url">foo</a></p>\n<blockquote>\n</blockquote>\n"""
            ]


        ]