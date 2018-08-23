module Test.Generated.SoftLineBreaks exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Soft line breaks"
        [

        describe "example 623"
            [ test """foo\nbaz\n""" <|
                \_ ->
                    """foo\nbaz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo\nbaz</p>\n"""
            ]

        ,

        describe "example 624"
            [ test """foo \n baz\n""" <|
                \_ ->
                    """foo \n baz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo\nbaz</p>\n"""
            ]


        ]