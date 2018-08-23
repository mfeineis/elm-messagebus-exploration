module Test.Generated.Paragraphs exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Paragraphs"
        [

        describe "example 182"
            [ test """aaa\n\nbbb\n""" <|
                \_ ->
                    """aaa\n\nbbb\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>aaa</p>\n<p>bbb</p>\n"""
            ]

        ,

        describe "example 183"
            [ test """aaa\nbbb\n\nccc\nddd\n""" <|
                \_ ->
                    """aaa\nbbb\n\nccc\nddd\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>aaa\nbbb</p>\n<p>ccc\nddd</p>\n"""
            ]

        ,

        describe "example 184"
            [ test """aaa\n\n\nbbb\n""" <|
                \_ ->
                    """aaa\n\n\nbbb\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>aaa</p>\n<p>bbb</p>\n"""
            ]

        ,

        describe "example 185"
            [ test """  aaa\n bbb\n""" <|
                \_ ->
                    """  aaa\n bbb\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>aaa\nbbb</p>\n"""
            ]

        ,

        describe "example 186"
            [ test """aaa\n             bbb\n                                       ccc\n""" <|
                \_ ->
                    """aaa\n             bbb\n                                       ccc\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>aaa\nbbb\nccc</p>\n"""
            ]

        ,

        describe "example 187"
            [ test """   aaa\nbbb\n""" <|
                \_ ->
                    """   aaa\nbbb\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>aaa\nbbb</p>\n"""
            ]

        ,

        describe "example 188"
            [ test """    aaa\nbbb\n""" <|
                \_ ->
                    """    aaa\nbbb\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>aaa\n</code></pre>\n<p>bbb</p>\n"""
            ]

        ,

        describe "example 189"
            [ test """aaa     \nbbb     \n""" <|
                \_ ->
                    """aaa     \nbbb     \n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>aaa<br />\nbbb</p>\n"""
            ]


        ]