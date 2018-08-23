module Test.Generated.HardLineBreaks exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Hard line breaks"
        [

        describe "example 608"
            [ test """foo  \nbaz\n""" <|
                \_ ->
                    """foo  \nbaz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo<br />\nbaz</p>\n"""
            ]

        ,

        describe "example 609"
            [ test """foo\\\nbaz\n""" <|
                \_ ->
                    """foo\\\nbaz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo<br />\nbaz</p>\n"""
            ]

        ,

        describe "example 610"
            [ test """foo       \nbaz\n""" <|
                \_ ->
                    """foo       \nbaz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo<br />\nbaz</p>\n"""
            ]

        ,

        describe "example 611"
            [ test """foo  \n     bar\n""" <|
                \_ ->
                    """foo  \n     bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo<br />\nbar</p>\n"""
            ]

        ,

        describe "example 612"
            [ test """foo\\\n     bar\n""" <|
                \_ ->
                    """foo\\\n     bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo<br />\nbar</p>\n"""
            ]

        ,

        describe "example 613"
            [ test """*foo  \nbar*\n""" <|
                \_ ->
                    """*foo  \nbar*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo<br />\nbar</em></p>\n"""
            ]

        ,

        describe "example 614"
            [ test """*foo\\\nbar*\n""" <|
                \_ ->
                    """*foo\\\nbar*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo<br />\nbar</em></p>\n"""
            ]

        ,

        describe "example 615"
            [ test """`code  \nspan`\n""" <|
                \_ ->
                    """`code  \nspan`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>code span</code></p>\n"""
            ]

        ,

        describe "example 616"
            [ test """`code\\\nspan`\n""" <|
                \_ ->
                    """`code\\\nspan`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>code\\ span</code></p>\n"""
            ]

        ,

        describe "example 617"
            [ test """<a href="foo  \nbar">\n""" <|
                \_ ->
                    """<a href="foo  \nbar">\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="foo  \nbar"></p>\n"""
            ]

        ,

        describe "example 618"
            [ test """<a href="foo\\\nbar">\n""" <|
                \_ ->
                    """<a href="foo\\\nbar">\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="foo\\\nbar"></p>\n"""
            ]

        ,

        describe "example 619"
            [ test """foo\\\n""" <|
                \_ ->
                    """foo\\\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo\\</p>\n"""
            ]

        ,

        describe "example 620"
            [ test """foo  \n""" <|
                \_ ->
                    """foo  \n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo</p>\n"""
            ]

        ,

        describe "example 621"
            [ test """### foo\\\n""" <|
                \_ ->
                    """### foo\\\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h3>foo\\</h3>\n"""
            ]

        ,

        describe "example 622"
            [ test """### foo  \n""" <|
                \_ ->
                    """### foo  \n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<h3>foo</h3>\n"""
            ]


        ]