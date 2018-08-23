module Test.Generated.Autolinks exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Autolinks"
        [

        describe "example 568"
            [ test """<http://foo.bar.baz>\n""" <|
                \_ ->
                    """<http://foo.bar.baz>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="http://foo.bar.baz">http://foo.bar.baz</a></p>\n"""
            ]

        ,

        describe "example 569"
            [ test """<http://foo.bar.baz/test?q=hello&id=22&boolean>\n""" <|
                \_ ->
                    """<http://foo.bar.baz/test?q=hello&id=22&boolean>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="http://foo.bar.baz/test?q=hello&amp;id=22&amp;boolean">http://foo.bar.baz/test?q=hello&amp;id=22&amp;boolean</a></p>\n"""
            ]

        ,

        describe "example 570"
            [ test """<irc://foo.bar:2233/baz>\n""" <|
                \_ ->
                    """<irc://foo.bar:2233/baz>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="irc://foo.bar:2233/baz">irc://foo.bar:2233/baz</a></p>\n"""
            ]

        ,

        describe "example 571"
            [ test """<MAILTO:FOO@BAR.BAZ>\n""" <|
                \_ ->
                    """<MAILTO:FOO@BAR.BAZ>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="MAILTO:FOO@BAR.BAZ">MAILTO:FOO@BAR.BAZ</a></p>\n"""
            ]

        ,

        describe "example 572"
            [ test """<a+b+c:d>\n""" <|
                \_ ->
                    """<a+b+c:d>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="a+b+c:d">a+b+c:d</a></p>\n"""
            ]

        ,

        describe "example 573"
            [ test """<made-up-scheme://foo,bar>\n""" <|
                \_ ->
                    """<made-up-scheme://foo,bar>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="made-up-scheme://foo,bar">made-up-scheme://foo,bar</a></p>\n"""
            ]

        ,

        describe "example 574"
            [ test """<http://../>\n""" <|
                \_ ->
                    """<http://../>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="http://../">http://../</a></p>\n"""
            ]

        ,

        describe "example 575"
            [ test """<localhost:5001/foo>\n""" <|
                \_ ->
                    """<localhost:5001/foo>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="localhost:5001/foo">localhost:5001/foo</a></p>\n"""
            ]

        ,

        describe "example 576"
            [ test """<http://foo.bar/baz bim>\n""" <|
                \_ ->
                    """<http://foo.bar/baz bim>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&lt;http://foo.bar/baz bim&gt;</p>\n"""
            ]

        ,

        describe "example 577"
            [ test """<http://example.com/\\[\\>\n""" <|
                \_ ->
                    """<http://example.com/\\[\\>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="http://example.com/%5C%5B%5C">http://example.com/\\[\\</a></p>\n"""
            ]

        ,

        describe "example 578"
            [ test """<foo@bar.example.com>\n""" <|
                \_ ->
                    """<foo@bar.example.com>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="mailto:foo@bar.example.com">foo@bar.example.com</a></p>\n"""
            ]

        ,

        describe "example 579"
            [ test """<foo+special@Bar.baz-bar0.com>\n""" <|
                \_ ->
                    """<foo+special@Bar.baz-bar0.com>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="mailto:foo+special@Bar.baz-bar0.com">foo+special@Bar.baz-bar0.com</a></p>\n"""
            ]

        ,

        describe "example 580"
            [ test """<foo\\+@bar.example.com>\n""" <|
                \_ ->
                    """<foo\\+@bar.example.com>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&lt;foo+@bar.example.com&gt;</p>\n"""
            ]

        ,

        describe "example 581"
            [ test """<>\n""" <|
                \_ ->
                    """<>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&lt;&gt;</p>\n"""
            ]

        ,

        describe "example 582"
            [ test """< http://foo.bar >\n""" <|
                \_ ->
                    """< http://foo.bar >\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&lt; http://foo.bar &gt;</p>\n"""
            ]

        ,

        describe "example 583"
            [ test """<m:abc>\n""" <|
                \_ ->
                    """<m:abc>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&lt;m:abc&gt;</p>\n"""
            ]

        ,

        describe "example 584"
            [ test """<foo.bar.baz>\n""" <|
                \_ ->
                    """<foo.bar.baz>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&lt;foo.bar.baz&gt;</p>\n"""
            ]

        ,

        describe "example 585"
            [ test """http://example.com\n""" <|
                \_ ->
                    """http://example.com\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>http://example.com</p>\n"""
            ]

        ,

        describe "example 586"
            [ test """foo@bar.example.com\n""" <|
                \_ ->
                    """foo@bar.example.com\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo@bar.example.com</p>\n"""
            ]


        ]