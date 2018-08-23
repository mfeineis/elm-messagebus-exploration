module Test.Generated.TextualContent exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Textual content"
        [

        describe "example 625"
            [ test """hello $.;'there\n""" <|
                \_ ->
                    """hello $.;'there\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>hello $.;'there</p>\n"""
            ]

        ,

        describe "example 626"
            [ test """Foo χρῆν\n""" <|
                \_ ->
                    """Foo χρῆν\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo χρῆν</p>\n"""
            ]

        ,

        describe "example 627"
            [ test """Multiple     spaces\n""" <|
                \_ ->
                    """Multiple     spaces\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Multiple     spaces</p>\n"""
            ]


        ]