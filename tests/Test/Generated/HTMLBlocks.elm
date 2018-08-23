module Test.Generated.HTMLBlocks exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "HTML blocks"
        [

        describe "example 116"
            [ test """<table><tr><td>\n<pre>\n**Hello**,\n\n_world_.\n</pre>\n</td></tr></table>\n""" <|
                \_ ->
                    """<table><tr><td>\n<pre>\n**Hello**,\n\n_world_.\n</pre>\n</td></tr></table>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<table><tr><td>\n<pre>\n**Hello**,\n<p><em>world</em>.\n</pre></p>\n</td></tr></table>\n"""
            ]

        ,

        describe "example 117"
            [ test """<table>\n  <tr>\n    <td>\n           hi\n    </td>\n  </tr>\n</table>\n\nokay.\n""" <|
                \_ ->
                    """<table>\n  <tr>\n    <td>\n           hi\n    </td>\n  </tr>\n</table>\n\nokay.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<table>\n  <tr>\n    <td>\n           hi\n    </td>\n  </tr>\n</table>\n<p>okay.</p>\n"""
            ]

        ,

        describe "example 118"
            [ test """ <div>\n  *hello*\n         <foo><a>\n""" <|
                \_ ->
                    """ <div>\n  *hello*\n         <foo><a>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """ <div>\n  *hello*\n         <foo><a>\n"""
            ]

        ,

        describe "example 119"
            [ test """</div>\n*foo*\n""" <|
                \_ ->
                    """</div>\n*foo*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """</div>\n*foo*\n"""
            ]

        ,

        describe "example 120"
            [ test """<DIV CLASS="foo">\n\n*Markdown*\n\n</DIV>\n""" <|
                \_ ->
                    """<DIV CLASS="foo">\n\n*Markdown*\n\n</DIV>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<DIV CLASS="foo">\n<p><em>Markdown</em></p>\n</DIV>\n"""
            ]

        ,

        describe "example 121"
            [ test """<div id="foo"\n  class="bar">\n</div>\n""" <|
                \_ ->
                    """<div id="foo"\n  class="bar">\n</div>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<div id="foo"\n  class="bar">\n</div>\n"""
            ]

        ,

        describe "example 122"
            [ test """<div id="foo" class="bar\n  baz">\n</div>\n""" <|
                \_ ->
                    """<div id="foo" class="bar\n  baz">\n</div>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<div id="foo" class="bar\n  baz">\n</div>\n"""
            ]

        ,

        describe "example 123"
            [ test """<div>\n*foo*\n\n*bar*\n""" <|
                \_ ->
                    """<div>\n*foo*\n\n*bar*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<div>\n*foo*\n<p><em>bar</em></p>\n"""
            ]

        ,

        describe "example 124"
            [ test """<div id="foo"\n*hi*\n""" <|
                \_ ->
                    """<div id="foo"\n*hi*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<div id="foo"\n*hi*\n"""
            ]

        ,

        describe "example 125"
            [ test """<div class\nfoo\n""" <|
                \_ ->
                    """<div class\nfoo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<div class\nfoo\n"""
            ]

        ,

        describe "example 126"
            [ test """<div *???-&&&-<---\n*foo*\n""" <|
                \_ ->
                    """<div *???-&&&-<---\n*foo*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<div *???-&&&-<---\n*foo*\n"""
            ]

        ,

        describe "example 127"
            [ test """<div><a href="bar">*foo*</a></div>\n""" <|
                \_ ->
                    """<div><a href="bar">*foo*</a></div>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<div><a href="bar">*foo*</a></div>\n"""
            ]

        ,

        describe "example 128"
            [ test """<table><tr><td>\nfoo\n</td></tr></table>\n""" <|
                \_ ->
                    """<table><tr><td>\nfoo\n</td></tr></table>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<table><tr><td>\nfoo\n</td></tr></table>\n"""
            ]

        ,

        describe "example 129"
            [ test """<div></div>\n``` c\nint x = 33;\n```\n""" <|
                \_ ->
                    """<div></div>\n``` c\nint x = 33;\n```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<div></div>\n``` c\nint x = 33;\n```\n"""
            ]

        ,

        describe "example 130"
            [ test """<a href="foo">\n*bar*\n</a>\n""" <|
                \_ ->
                    """<a href="foo">\n*bar*\n</a>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<a href="foo">\n*bar*\n</a>\n"""
            ]

        ,

        describe "example 131"
            [ test """<Warning>\n*bar*\n</Warning>\n""" <|
                \_ ->
                    """<Warning>\n*bar*\n</Warning>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<Warning>\n*bar*\n</Warning>\n"""
            ]

        ,

        describe "example 132"
            [ test """<i class="foo">\n*bar*\n</i>\n""" <|
                \_ ->
                    """<i class="foo">\n*bar*\n</i>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<i class="foo">\n*bar*\n</i>\n"""
            ]

        ,

        describe "example 133"
            [ test """</ins>\n*bar*\n""" <|
                \_ ->
                    """</ins>\n*bar*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """</ins>\n*bar*\n"""
            ]

        ,

        describe "example 134"
            [ test """<del>\n*foo*\n</del>\n""" <|
                \_ ->
                    """<del>\n*foo*\n</del>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<del>\n*foo*\n</del>\n"""
            ]

        ,

        describe "example 135"
            [ test """<del>\n\n*foo*\n\n</del>\n""" <|
                \_ ->
                    """<del>\n\n*foo*\n\n</del>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<del>\n<p><em>foo</em></p>\n</del>\n"""
            ]

        ,

        describe "example 136"
            [ test """<del>*foo*</del>\n""" <|
                \_ ->
                    """<del>*foo*</del>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><del><em>foo</em></del></p>\n"""
            ]

        ,

        describe "example 137"
            [ test """<pre language="haskell"><code>\nimport Text.HTML.TagSoup\n\nmain :: IO ()\nmain = print $ parseTags tags\n</code></pre>\nokay\n""" <|
                \_ ->
                    """<pre language="haskell"><code>\nimport Text.HTML.TagSoup\n\nmain :: IO ()\nmain = print $ parseTags tags\n</code></pre>\nokay\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre language="haskell"><code>\nimport Text.HTML.TagSoup\n\nmain :: IO ()\nmain = print $ parseTags tags\n</code></pre>\n<p>okay</p>\n"""
            ]

        ,

        describe "example 138"
            [ test """<script type="text/javascript">\n// JavaScript example\n\ndocument.getElementById("demo").innerHTML = "Hello JavaScript!";\n</script>\nokay\n""" <|
                \_ ->
                    """<script type="text/javascript">\n// JavaScript example\n\ndocument.getElementById("demo").innerHTML = "Hello JavaScript!";\n</script>\nokay\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<script type="text/javascript">\n// JavaScript example\n\ndocument.getElementById("demo").innerHTML = "Hello JavaScript!";\n</script>\n<p>okay</p>\n"""
            ]

        ,

        describe "example 139"
            [ test """<style\n  type="text/css">\nh1 {color:red;}\n\np {color:blue;}\n</style>\nokay\n""" <|
                \_ ->
                    """<style\n  type="text/css">\nh1 {color:red;}\n\np {color:blue;}\n</style>\nokay\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<style\n  type="text/css">\nh1 {color:red;}\n\np {color:blue;}\n</style>\n<p>okay</p>\n"""
            ]

        ,

        describe "example 140"
            [ test """<style\n  type="text/css">\n\nfoo\n""" <|
                \_ ->
                    """<style\n  type="text/css">\n\nfoo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<style\n  type="text/css">\n\nfoo\n"""
            ]

        ,

        describe "example 141"
            [ test """> <div>\n> foo\n\nbar\n""" <|
                \_ ->
                    """> <div>\n> foo\n\nbar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<blockquote>\n<div>\nfoo\n</blockquote>\n<p>bar</p>\n"""
            ]

        ,

        describe "example 142"
            [ test """- <div>\n- foo\n""" <|
                \_ ->
                    """- <div>\n- foo\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<ul>\n<li>\n<div>\n</li>\n<li>foo</li>\n</ul>\n"""
            ]

        ,

        describe "example 143"
            [ test """<style>p{color:red;}</style>\n*foo*\n""" <|
                \_ ->
                    """<style>p{color:red;}</style>\n*foo*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<style>p{color:red;}</style>\n<p><em>foo</em></p>\n"""
            ]

        ,

        describe "example 144"
            [ test """<!-- foo -->*bar*\n*baz*\n""" <|
                \_ ->
                    """<!-- foo -->*bar*\n*baz*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<!-- foo -->*bar*\n<p><em>baz</em></p>\n"""
            ]

        ,

        describe "example 145"
            [ test """<script>\nfoo\n</script>1. *bar*\n""" <|
                \_ ->
                    """<script>\nfoo\n</script>1. *bar*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<script>\nfoo\n</script>1. *bar*\n"""
            ]

        ,

        describe "example 146"
            [ test """<!-- Foo\n\nbar\n   baz -->\nokay\n""" <|
                \_ ->
                    """<!-- Foo\n\nbar\n   baz -->\nokay\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<!-- Foo\n\nbar\n   baz -->\n<p>okay</p>\n"""
            ]

        ,

        describe "example 147"
            [ test """<?php\n\n  echo '>';\n\n?>\nokay\n""" <|
                \_ ->
                    """<?php\n\n  echo '>';\n\n?>\nokay\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<?php\n\n  echo '>';\n\n?>\n<p>okay</p>\n"""
            ]

        ,

        describe "example 148"
            [ test """<!DOCTYPE html>\n""" <|
                \_ ->
                    """<!DOCTYPE html>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<!DOCTYPE html>\n"""
            ]

        ,

        describe "example 149"
            [ test """<![CDATA[\nfunction matchwo(a,b)\n{\n  if (a < b && a < 0) then {\n    return 1;\n\n  } else {\n\n    return 0;\n  }\n}\n]]>\nokay\n""" <|
                \_ ->
                    """<![CDATA[\nfunction matchwo(a,b)\n{\n  if (a < b && a < 0) then {\n    return 1;\n\n  } else {\n\n    return 0;\n  }\n}\n]]>\nokay\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<![CDATA[\nfunction matchwo(a,b)\n{\n  if (a < b && a < 0) then {\n    return 1;\n\n  } else {\n\n    return 0;\n  }\n}\n]]>\n<p>okay</p>\n"""
            ]

        ,

        describe "example 150"
            [ test """  <!-- foo -->\n\n    <!-- foo -->\n""" <|
                \_ ->
                    """  <!-- foo -->\n\n    <!-- foo -->\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """  <!-- foo -->\n<pre><code>&lt;!-- foo --&gt;\n</code></pre>\n"""
            ]

        ,

        describe "example 151"
            [ test """  <div>\n\n    <div>\n""" <|
                \_ ->
                    """  <div>\n\n    <div>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """  <div>\n<pre><code>&lt;div&gt;\n</code></pre>\n"""
            ]

        ,

        describe "example 152"
            [ test """Foo\n<div>\nbar\n</div>\n""" <|
                \_ ->
                    """Foo\n<div>\nbar\n</div>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo</p>\n<div>\nbar\n</div>\n"""
            ]

        ,

        describe "example 153"
            [ test """<div>\nbar\n</div>\n*foo*\n""" <|
                \_ ->
                    """<div>\nbar\n</div>\n*foo*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<div>\nbar\n</div>\n*foo*\n"""
            ]

        ,

        describe "example 154"
            [ test """Foo\n<a href="bar">\nbaz\n""" <|
                \_ ->
                    """Foo\n<a href="bar">\nbaz\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo\n<a href="bar">\nbaz</p>\n"""
            ]

        ,

        describe "example 155"
            [ test """<div>\n\n*Emphasized* text.\n\n</div>\n""" <|
                \_ ->
                    """<div>\n\n*Emphasized* text.\n\n</div>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<div>\n<p><em>Emphasized</em> text.</p>\n</div>\n"""
            ]

        ,

        describe "example 156"
            [ test """<div>\n*Emphasized* text.\n</div>\n""" <|
                \_ ->
                    """<div>\n*Emphasized* text.\n</div>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<div>\n*Emphasized* text.\n</div>\n"""
            ]

        ,

        describe "example 157"
            [ test """<table>\n\n<tr>\n\n<td>\nHi\n</td>\n\n</tr>\n\n</table>\n""" <|
                \_ ->
                    """<table>\n\n<tr>\n\n<td>\nHi\n</td>\n\n</tr>\n\n</table>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<table>\n<tr>\n<td>\nHi\n</td>\n</tr>\n</table>\n"""
            ]

        ,

        describe "example 158"
            [ test """<table>\n\n  <tr>\n\n    <td>\n      Hi\n    </td>\n\n  </tr>\n\n</table>\n""" <|
                \_ ->
                    """<table>\n\n  <tr>\n\n    <td>\n      Hi\n    </td>\n\n  </tr>\n\n</table>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<table>\n  <tr>\n<pre><code>&lt;td&gt;\n  Hi\n&lt;/td&gt;\n</code></pre>\n  </tr>\n</table>\n"""
            ]


        ]