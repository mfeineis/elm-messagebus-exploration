module Test.Generated.Links exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Links"
        [

        describe "example 462"
            [ test """[link](/uri "title")\n""" <|
                \_ ->
                    """[link](/uri "title")\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/uri" title="title">link</a></p>\n"""
            ]

        ,

        describe "example 463"
            [ test """[link](/uri)\n""" <|
                \_ ->
                    """[link](/uri)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/uri">link</a></p>\n"""
            ]

        ,

        describe "example 464"
            [ test """[link]()\n""" <|
                \_ ->
                    """[link]()\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="">link</a></p>\n"""
            ]

        ,

        describe "example 465"
            [ test """[link](<>)\n""" <|
                \_ ->
                    """[link](<>)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="">link</a></p>\n"""
            ]

        ,

        describe "example 466"
            [ test """[link](/my uri)\n""" <|
                \_ ->
                    """[link](/my uri)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[link](/my uri)</p>\n"""
            ]

        ,

        describe "example 467"
            [ test """[link](</my uri>)\n""" <|
                \_ ->
                    """[link](</my uri>)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/my%20uri">link</a></p>\n"""
            ]

        ,

        describe "example 468"
            [ test """[link](foo\nbar)\n""" <|
                \_ ->
                    """[link](foo\nbar)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[link](foo\nbar)</p>\n"""
            ]

        ,

        describe "example 469"
            [ test """[link](<foo\nbar>)\n""" <|
                \_ ->
                    """[link](<foo\nbar>)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[link](<foo\nbar>)</p>\n"""
            ]

        ,

        describe "example 470"
            [ test """[link](\\(foo\\))\n""" <|
                \_ ->
                    """[link](\\(foo\\))\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="(foo)">link</a></p>\n"""
            ]

        ,

        describe "example 471"
            [ test """[link](foo(and(bar)))\n""" <|
                \_ ->
                    """[link](foo(and(bar)))\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="foo(and(bar))">link</a></p>\n"""
            ]

        ,

        describe "example 472"
            [ test """[link](foo\\(and\\(bar\\))\n""" <|
                \_ ->
                    """[link](foo\\(and\\(bar\\))\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="foo(and(bar)">link</a></p>\n"""
            ]

        ,

        describe "example 473"
            [ test """[link](<foo(and(bar)>)\n""" <|
                \_ ->
                    """[link](<foo(and(bar)>)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="foo(and(bar)">link</a></p>\n"""
            ]

        ,

        describe "example 474"
            [ test """[link](foo\\)\\:)\n""" <|
                \_ ->
                    """[link](foo\\)\\:)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="foo):">link</a></p>\n"""
            ]

        ,

        describe "example 475"
            [ test """[link](#fragment)\n\n[link](http://example.com#fragment)\n\n[link](http://example.com?foo=3#frag)\n""" <|
                \_ ->
                    """[link](#fragment)\n\n[link](http://example.com#fragment)\n\n[link](http://example.com?foo=3#frag)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="#fragment">link</a></p>\n<p><a href="http://example.com#fragment">link</a></p>\n<p><a href="http://example.com?foo=3#frag">link</a></p>\n"""
            ]

        ,

        describe "example 476"
            [ test """[link](foo\\bar)\n""" <|
                \_ ->
                    """[link](foo\\bar)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="foo%5Cbar">link</a></p>\n"""
            ]

        ,

        describe "example 477"
            [ test """[link](foo%20b&auml;)\n""" <|
                \_ ->
                    """[link](foo%20b&auml;)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="foo%20b%C3%A4">link</a></p>\n"""
            ]

        ,

        describe "example 478"
            [ test """[link]("title")\n""" <|
                \_ ->
                    """[link]("title")\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="%22title%22">link</a></p>\n"""
            ]

        ,

        describe "example 479"
            [ test """[link](/url "title")\n[link](/url 'title')\n[link](/url (title))\n""" <|
                \_ ->
                    """[link](/url "title")\n[link](/url 'title')\n[link](/url (title))\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url" title="title">link</a>\n<a href="/url" title="title">link</a>\n<a href="/url" title="title">link</a></p>\n"""
            ]

        ,

        describe "example 480"
            [ test """[link](/url "title \\"&quot;")\n""" <|
                \_ ->
                    """[link](/url "title \\"&quot;")\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url" title="title &quot;&quot;">link</a></p>\n"""
            ]

        ,

        describe "example 481"
            [ test """[link](/url "title")\n""" <|
                \_ ->
                    """[link](/url "title")\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url%C2%A0%22title%22">link</a></p>\n"""
            ]

        ,

        describe "example 482"
            [ test """[link](/url "title "and" title")\n""" <|
                \_ ->
                    """[link](/url "title "and" title")\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[link](/url &quot;title &quot;and&quot; title&quot;)</p>\n"""
            ]

        ,

        describe "example 483"
            [ test """[link](/url 'title "and" title')\n""" <|
                \_ ->
                    """[link](/url 'title "and" title')\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url" title="title &quot;and&quot; title">link</a></p>\n"""
            ]

        ,

        describe "example 484"
            [ test """[link](   /uri\n  "title"  )\n""" <|
                \_ ->
                    """[link](   /uri\n  "title"  )\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/uri" title="title">link</a></p>\n"""
            ]

        ,

        describe "example 485"
            [ test """[link] (/uri)\n""" <|
                \_ ->
                    """[link] (/uri)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[link] (/uri)</p>\n"""
            ]

        ,

        describe "example 486"
            [ test """[link [foo [bar]]](/uri)\n""" <|
                \_ ->
                    """[link [foo [bar]]](/uri)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/uri">link [foo [bar]]</a></p>\n"""
            ]

        ,

        describe "example 487"
            [ test """[link] bar](/uri)\n""" <|
                \_ ->
                    """[link] bar](/uri)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[link] bar](/uri)</p>\n"""
            ]

        ,

        describe "example 488"
            [ test """[link [bar](/uri)\n""" <|
                \_ ->
                    """[link [bar](/uri)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[link <a href="/uri">bar</a></p>\n"""
            ]

        ,

        describe "example 489"
            [ test """[link \\[bar](/uri)\n""" <|
                \_ ->
                    """[link \\[bar](/uri)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/uri">link [bar</a></p>\n"""
            ]

        ,

        describe "example 490"
            [ test """[link *foo **bar** `#`*](/uri)\n""" <|
                \_ ->
                    """[link *foo **bar** `#`*](/uri)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/uri">link <em>foo <strong>bar</strong> <code>#</code></em></a></p>\n"""
            ]

        ,

        describe "example 491"
            [ test """[![moon](moon.jpg)](/uri)\n""" <|
                \_ ->
                    """[![moon](moon.jpg)](/uri)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/uri"><img src="moon.jpg" alt="moon" /></a></p>\n"""
            ]

        ,

        describe "example 492"
            [ test """[foo [bar](/uri)](/uri)\n""" <|
                \_ ->
                    """[foo [bar](/uri)](/uri)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo <a href="/uri">bar</a>](/uri)</p>\n"""
            ]

        ,

        describe "example 493"
            [ test """[foo *[bar [baz](/uri)](/uri)*](/uri)\n""" <|
                \_ ->
                    """[foo *[bar [baz](/uri)](/uri)*](/uri)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo <em>[bar <a href="/uri">baz</a>](/uri)</em>](/uri)</p>\n"""
            ]

        ,

        describe "example 494"
            [ test """![[[foo](uri1)](uri2)](uri3)\n""" <|
                \_ ->
                    """![[[foo](uri1)](uri2)](uri3)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><img src="uri3" alt="[foo](uri2)" /></p>\n"""
            ]

        ,

        describe "example 495"
            [ test """*[foo*](/uri)\n""" <|
                \_ ->
                    """*[foo*](/uri)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>*<a href="/uri">foo*</a></p>\n"""
            ]

        ,

        describe "example 496"
            [ test """[foo *bar](baz*)\n""" <|
                \_ ->
                    """[foo *bar](baz*)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="baz*">foo *bar</a></p>\n"""
            ]

        ,

        describe "example 497"
            [ test """*foo [bar* baz]\n""" <|
                \_ ->
                    """*foo [bar* baz]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo [bar</em> baz]</p>\n"""
            ]

        ,

        describe "example 498"
            [ test """[foo <bar attr="](baz)">\n""" <|
                \_ ->
                    """[foo <bar attr="](baz)">\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo <bar attr="](baz)"></p>\n"""
            ]

        ,

        describe "example 499"
            [ test """[foo`](/uri)`\n""" <|
                \_ ->
                    """[foo`](/uri)`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo<code>](/uri)</code></p>\n"""
            ]

        ,

        describe "example 500"
            [ test """[foo<http://example.com/?search=](uri)>\n""" <|
                \_ ->
                    """[foo<http://example.com/?search=](uri)>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo<a href="http://example.com/?search=%5D(uri)">http://example.com/?search=](uri)</a></p>\n"""
            ]

        ,

        describe "example 501"
            [ test """[foo][bar]\n\n[bar]: /url "title"\n""" <|
                \_ ->
                    """[foo][bar]\n\n[bar]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url" title="title">foo</a></p>\n"""
            ]

        ,

        describe "example 502"
            [ test """[link [foo [bar]]][ref]\n\n[ref]: /uri\n""" <|
                \_ ->
                    """[link [foo [bar]]][ref]\n\n[ref]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/uri">link [foo [bar]]</a></p>\n"""
            ]

        ,

        describe "example 503"
            [ test """[link \\[bar][ref]\n\n[ref]: /uri\n""" <|
                \_ ->
                    """[link \\[bar][ref]\n\n[ref]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/uri">link [bar</a></p>\n"""
            ]

        ,

        describe "example 504"
            [ test """[link *foo **bar** `#`*][ref]\n\n[ref]: /uri\n""" <|
                \_ ->
                    """[link *foo **bar** `#`*][ref]\n\n[ref]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/uri">link <em>foo <strong>bar</strong> <code>#</code></em></a></p>\n"""
            ]

        ,

        describe "example 505"
            [ test """[![moon](moon.jpg)][ref]\n\n[ref]: /uri\n""" <|
                \_ ->
                    """[![moon](moon.jpg)][ref]\n\n[ref]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/uri"><img src="moon.jpg" alt="moon" /></a></p>\n"""
            ]

        ,

        describe "example 506"
            [ test """[foo [bar](/uri)][ref]\n\n[ref]: /uri\n""" <|
                \_ ->
                    """[foo [bar](/uri)][ref]\n\n[ref]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo <a href="/uri">bar</a>]<a href="/uri">ref</a></p>\n"""
            ]

        ,

        describe "example 507"
            [ test """[foo *bar [baz][ref]*][ref]\n\n[ref]: /uri\n""" <|
                \_ ->
                    """[foo *bar [baz][ref]*][ref]\n\n[ref]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo <em>bar <a href="/uri">baz</a></em>]<a href="/uri">ref</a></p>\n"""
            ]

        ,

        describe "example 508"
            [ test """*[foo*][ref]\n\n[ref]: /uri\n""" <|
                \_ ->
                    """*[foo*][ref]\n\n[ref]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>*<a href="/uri">foo*</a></p>\n"""
            ]

        ,

        describe "example 509"
            [ test """[foo *bar][ref]\n\n[ref]: /uri\n""" <|
                \_ ->
                    """[foo *bar][ref]\n\n[ref]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/uri">foo *bar</a></p>\n"""
            ]

        ,

        describe "example 510"
            [ test """[foo <bar attr="][ref]">\n\n[ref]: /uri\n""" <|
                \_ ->
                    """[foo <bar attr="][ref]">\n\n[ref]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo <bar attr="][ref]"></p>\n"""
            ]

        ,

        describe "example 511"
            [ test """[foo`][ref]`\n\n[ref]: /uri\n""" <|
                \_ ->
                    """[foo`][ref]`\n\n[ref]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo<code>][ref]</code></p>\n"""
            ]

        ,

        describe "example 512"
            [ test """[foo<http://example.com/?search=][ref]>\n\n[ref]: /uri\n""" <|
                \_ ->
                    """[foo<http://example.com/?search=][ref]>\n\n[ref]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo<a href="http://example.com/?search=%5D%5Bref%5D">http://example.com/?search=][ref]</a></p>\n"""
            ]

        ,

        describe "example 513"
            [ test """[foo][BaR]\n\n[bar]: /url "title"\n""" <|
                \_ ->
                    """[foo][BaR]\n\n[bar]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url" title="title">foo</a></p>\n"""
            ]

        ,

        describe "example 514"
            [ test """[Толпой][Толпой] is a Russian word.\n\n[ТОЛПОЙ]: /url\n""" <|
                \_ ->
                    """[Толпой][Толпой] is a Russian word.\n\n[ТОЛПОЙ]: /url\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url">Толпой</a> is a Russian word.</p>\n"""
            ]

        ,

        describe "example 515"
            [ test """[Foo\n  bar]: /url\n\n[Baz][Foo bar]\n""" <|
                \_ ->
                    """[Foo\n  bar]: /url\n\n[Baz][Foo bar]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url">Baz</a></p>\n"""
            ]

        ,

        describe "example 516"
            [ test """[foo] [bar]\n\n[bar]: /url "title"\n""" <|
                \_ ->
                    """[foo] [bar]\n\n[bar]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo] <a href="/url" title="title">bar</a></p>\n"""
            ]

        ,

        describe "example 517"
            [ test """[foo]\n[bar]\n\n[bar]: /url "title"\n""" <|
                \_ ->
                    """[foo]\n[bar]\n\n[bar]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo]\n<a href="/url" title="title">bar</a></p>\n"""
            ]

        ,

        describe "example 518"
            [ test """[foo]: /url1\n\n[foo]: /url2\n\n[bar][foo]\n""" <|
                \_ ->
                    """[foo]: /url1\n\n[foo]: /url2\n\n[bar][foo]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url1">bar</a></p>\n"""
            ]

        ,

        describe "example 519"
            [ test """[bar][foo\\!]\n\n[foo!]: /url\n""" <|
                \_ ->
                    """[bar][foo\\!]\n\n[foo!]: /url\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[bar][foo!]</p>\n"""
            ]

        ,

        describe "example 520"
            [ test """[foo][ref[]\n\n[ref[]: /uri\n""" <|
                \_ ->
                    """[foo][ref[]\n\n[ref[]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo][ref[]</p>\n<p>[ref[]: /uri</p>\n"""
            ]

        ,

        describe "example 521"
            [ test """[foo][ref[bar]]\n\n[ref[bar]]: /uri\n""" <|
                \_ ->
                    """[foo][ref[bar]]\n\n[ref[bar]]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo][ref[bar]]</p>\n<p>[ref[bar]]: /uri</p>\n"""
            ]

        ,

        describe "example 522"
            [ test """[[[foo]]]\n\n[[[foo]]]: /url\n""" <|
                \_ ->
                    """[[[foo]]]\n\n[[[foo]]]: /url\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[[[foo]]]</p>\n<p>[[[foo]]]: /url</p>\n"""
            ]

        ,

        describe "example 523"
            [ test """[foo][ref\\[]\n\n[ref\\[]: /uri\n""" <|
                \_ ->
                    """[foo][ref\\[]\n\n[ref\\[]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/uri">foo</a></p>\n"""
            ]

        ,

        describe "example 524"
            [ test """[bar\\\\]: /uri\n\n[bar\\\\]\n""" <|
                \_ ->
                    """[bar\\\\]: /uri\n\n[bar\\\\]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/uri">bar\\</a></p>\n"""
            ]

        ,

        describe "example 525"
            [ test """[]\n\n[]: /uri\n""" <|
                \_ ->
                    """[]\n\n[]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[]</p>\n<p>[]: /uri</p>\n"""
            ]

        ,

        describe "example 526"
            [ test """[\n ]\n\n[\n ]: /uri\n""" <|
                \_ ->
                    """[\n ]\n\n[\n ]: /uri\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[\n]</p>\n<p>[\n]: /uri</p>\n"""
            ]

        ,

        describe "example 527"
            [ test """[foo][]\n\n[foo]: /url "title"\n""" <|
                \_ ->
                    """[foo][]\n\n[foo]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url" title="title">foo</a></p>\n"""
            ]

        ,

        describe "example 528"
            [ test """[*foo* bar][]\n\n[*foo* bar]: /url "title"\n""" <|
                \_ ->
                    """[*foo* bar][]\n\n[*foo* bar]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url" title="title"><em>foo</em> bar</a></p>\n"""
            ]

        ,

        describe "example 529"
            [ test """[Foo][]\n\n[foo]: /url "title"\n""" <|
                \_ ->
                    """[Foo][]\n\n[foo]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url" title="title">Foo</a></p>\n"""
            ]

        ,

        describe "example 530"
            [ test """[foo] \n[]\n\n[foo]: /url "title"\n""" <|
                \_ ->
                    """[foo] \n[]\n\n[foo]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url" title="title">foo</a>\n[]</p>\n"""
            ]

        ,

        describe "example 531"
            [ test """[foo]\n\n[foo]: /url "title"\n""" <|
                \_ ->
                    """[foo]\n\n[foo]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url" title="title">foo</a></p>\n"""
            ]

        ,

        describe "example 532"
            [ test """[*foo* bar]\n\n[*foo* bar]: /url "title"\n""" <|
                \_ ->
                    """[*foo* bar]\n\n[*foo* bar]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url" title="title"><em>foo</em> bar</a></p>\n"""
            ]

        ,

        describe "example 533"
            [ test """[[*foo* bar]]\n\n[*foo* bar]: /url "title"\n""" <|
                \_ ->
                    """[[*foo* bar]]\n\n[*foo* bar]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[<a href="/url" title="title"><em>foo</em> bar</a>]</p>\n"""
            ]

        ,

        describe "example 534"
            [ test """[[bar [foo]\n\n[foo]: /url\n""" <|
                \_ ->
                    """[[bar [foo]\n\n[foo]: /url\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[[bar <a href="/url">foo</a></p>\n"""
            ]

        ,

        describe "example 535"
            [ test """[Foo]\n\n[foo]: /url "title"\n""" <|
                \_ ->
                    """[Foo]\n\n[foo]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url" title="title">Foo</a></p>\n"""
            ]

        ,

        describe "example 536"
            [ test """[foo] bar\n\n[foo]: /url\n""" <|
                \_ ->
                    """[foo] bar\n\n[foo]: /url\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url">foo</a> bar</p>\n"""
            ]

        ,

        describe "example 537"
            [ test """\\[foo]\n\n[foo]: /url "title"\n""" <|
                \_ ->
                    """\\[foo]\n\n[foo]: /url "title"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo]</p>\n"""
            ]

        ,

        describe "example 538"
            [ test """[foo*]: /url\n\n*[foo*]\n""" <|
                \_ ->
                    """[foo*]: /url\n\n*[foo*]\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>*<a href="/url">foo*</a></p>\n"""
            ]

        ,

        describe "example 539"
            [ test """[foo][bar]\n\n[foo]: /url1\n[bar]: /url2\n""" <|
                \_ ->
                    """[foo][bar]\n\n[foo]: /url1\n[bar]: /url2\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url2">foo</a></p>\n"""
            ]

        ,

        describe "example 540"
            [ test """[foo][]\n\n[foo]: /url1\n""" <|
                \_ ->
                    """[foo][]\n\n[foo]: /url1\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url1">foo</a></p>\n"""
            ]

        ,

        describe "example 541"
            [ test """[foo]()\n\n[foo]: /url1\n""" <|
                \_ ->
                    """[foo]()\n\n[foo]: /url1\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="">foo</a></p>\n"""
            ]

        ,

        describe "example 542"
            [ test """[foo](not a link)\n\n[foo]: /url1\n""" <|
                \_ ->
                    """[foo](not a link)\n\n[foo]: /url1\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url1">foo</a>(not a link)</p>\n"""
            ]

        ,

        describe "example 543"
            [ test """[foo][bar][baz]\n\n[baz]: /url\n""" <|
                \_ ->
                    """[foo][bar][baz]\n\n[baz]: /url\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo]<a href="/url">bar</a></p>\n"""
            ]

        ,

        describe "example 544"
            [ test """[foo][bar][baz]\n\n[baz]: /url1\n[bar]: /url2\n""" <|
                \_ ->
                    """[foo][bar][baz]\n\n[baz]: /url1\n[bar]: /url2\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/url2">foo</a><a href="/url1">baz</a></p>\n"""
            ]

        ,

        describe "example 545"
            [ test """[foo][bar][baz]\n\n[baz]: /url1\n[foo]: /url2\n""" <|
                \_ ->
                    """[foo][bar][baz]\n\n[baz]: /url1\n[foo]: /url2\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>[foo]<a href="/url1">bar</a></p>\n"""
            ]


        ]