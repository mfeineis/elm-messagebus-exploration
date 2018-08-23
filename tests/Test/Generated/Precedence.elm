module Test.Generated.Precedence exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Precedence"
        [

        describe "example 12"
            [ test """- `one\n- two`\n""" <|
                \_ ->
                    """- `one\n- two`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>`one</li>\n<li>two`</li>\n</ul>\n"""
            ]


        ]