module Test.Generated.Images exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Images"
        [

        describe "example 546"
            [ test """![foo](/url "title")\n""" <|
                \_ ->
                    """![foo](/url "title")\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="/url" alt="foo" title="title" /></p>\n"""
            ]

        ,

        describe "example 547"
            [ test """![foo *bar*]\n\n[foo *bar*]: train.jpg "train & tracks"\n""" <|
                \_ ->
                    """![foo *bar*]\n\n[foo *bar*]: train.jpg "train & tracks"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="train.jpg" alt="foo bar" title="train &amp; tracks" /></p>\n"""
            ]

        ,

        describe "example 548"
            [ test """![foo ![bar](/url)](/url2)\n""" <|
                \_ ->
                    """![foo ![bar](/url)](/url2)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="/url2" alt="foo bar" /></p>\n"""
            ]

        ,

        describe "example 549"
            [ test """![foo [bar](/url)](/url2)\n""" <|
                \_ ->
                    """![foo [bar](/url)](/url2)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="/url2" alt="foo bar" /></p>\n"""
            ]

        ,

        describe "example 550"
            [ test """![foo *bar*][]\n\n[foo *bar*]: train.jpg "train & tracks"\n""" <|
                \_ ->
                    """![foo *bar*][]\n\n[foo *bar*]: train.jpg "train & tracks"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="train.jpg" alt="foo bar" title="train &amp; tracks" /></p>\n"""
            ]

        ,

        describe "example 551"
            [ test """![foo *bar*][foobar]\n\n[FOOBAR]: train.jpg "train & tracks"\n""" <|
                \_ ->
                    """![foo *bar*][foobar]\n\n[FOOBAR]: train.jpg "train & tracks"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="train.jpg" alt="foo bar" title="train &amp; tracks" /></p>\n"""
            ]

        ,

        describe "example 552"
            [ test """![foo](train.jpg)\n""" <|
                \_ ->
                    """![foo](train.jpg)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="train.jpg" alt="foo" /></p>\n"""
            ]

        ,

        describe "example 553"
            [ test """My ![foo bar](/path/to/train.jpg  "title"   )\n""" <|
                \_ ->
                    """My ![foo bar](/path/to/train.jpg  "title"   )\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>My <img src="/path/to/train.jpg" alt="foo bar" title="title" /></p>\n"""
            ]

        ,

        describe "example 554"
            [ test """![foo](<url>)\n""" <|
                \_ ->
                    """![foo](<url>)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="url" alt="foo" /></p>\n"""
            ]

        ,

        describe "example 555"
            [ test """![](/url)\n""" <|
                \_ ->
                    """![](/url)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="/url" alt="" /></p>\n"""
            ]

        ,

        describe "example 556"
            [ test """![foo][bar]\n\n[bar]: /url\n""" <|
                \_ ->
                    """![foo][bar]\n\n[bar]: /url\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="/url" alt="foo" /></p>\n"""
            ]

        ,

        describe "example 557"
            [ test """![foo][bar]\n\n[BAR]: /url\n""" <|
                \_ ->
                    """![foo][bar]\n\n[BAR]: /url\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="/url" alt="foo" /></p>\n"""
            ]

        ,

        describe "example 558"
            [ test """![foo][]\n\n[foo]: /url "title"\n""" <|
                \_ ->
                    """![foo][]\n\n[foo]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="/url" alt="foo" title="title" /></p>\n"""
            ]

        ,

        describe "example 559"
            [ test """![*foo* bar][]\n\n[*foo* bar]: /url "title"\n""" <|
                \_ ->
                    """![*foo* bar][]\n\n[*foo* bar]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="/url" alt="foo bar" title="title" /></p>\n"""
            ]

        ,

        describe "example 560"
            [ test """![Foo][]\n\n[foo]: /url "title"\n""" <|
                \_ ->
                    """![Foo][]\n\n[foo]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="/url" alt="Foo" title="title" /></p>\n"""
            ]

        ,

        describe "example 561"
            [ test """![foo] \n[]\n\n[foo]: /url "title"\n""" <|
                \_ ->
                    """![foo] \n[]\n\n[foo]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="/url" alt="foo" title="title" />\n[]</p>\n"""
            ]

        ,

        describe "example 562"
            [ test """![foo]\n\n[foo]: /url "title"\n""" <|
                \_ ->
                    """![foo]\n\n[foo]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="/url" alt="foo" title="title" /></p>\n"""
            ]

        ,

        describe "example 563"
            [ test """![*foo* bar]\n\n[*foo* bar]: /url "title"\n""" <|
                \_ ->
                    """![*foo* bar]\n\n[*foo* bar]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="/url" alt="foo bar" title="title" /></p>\n"""
            ]

        ,

        describe "example 564"
            [ test """![[foo]]\n\n[[foo]]: /url "title"\n""" <|
                \_ ->
                    """![[foo]]\n\n[[foo]]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>![[foo]]</p>\n<p>[[foo]]: /url &quot;title&quot;</p>\n"""
            ]

        ,

        describe "example 565"
            [ test """![Foo]\n\n[foo]: /url "title"\n""" <|
                \_ ->
                    """![Foo]\n\n[foo]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="/url" alt="Foo" title="title" /></p>\n"""
            ]

        ,

        describe "example 566"
            [ test """!\\[foo]\n\n[foo]: /url "title"\n""" <|
                \_ ->
                    """!\\[foo]\n\n[foo]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>![foo]</p>\n"""
            ]

        ,

        describe "example 567"
            [ test """\\![foo]\n\n[foo]: /url "title"\n""" <|
                \_ ->
                    """\\![foo]\n\n[foo]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>!<a href="/url" title="title">foo</a></p>\n"""
            ]


        ]