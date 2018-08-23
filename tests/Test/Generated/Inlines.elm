module Test.Generated.Inlines exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Inlines"
        [

        describe "example 290"
            [ test """`hi`lo`\n""" <|
                \_ ->
                    """`hi`lo`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>hi</code>lo`</p>\n"""
            ]


        ]