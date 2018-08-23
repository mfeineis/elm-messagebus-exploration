module Test.Generated.BlankLines exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Blank lines"
        [

        describe "example 190"
            [ test """  \n\naaa\n  \n\n# aaa\n\n  \n""" <|
                \_ ->
                    """  \n\naaa\n  \n\n# aaa\n\n  \n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>aaa</p>\n<h1>aaa</h1>\n"""
            ]


        ]