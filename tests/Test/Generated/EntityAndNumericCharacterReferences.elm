module Test.Generated.EntityAndNumericCharacterReferences exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Entity and numeric character references"
        [

        describe "example 304"
            [ test """&nbsp; &amp; &copy; &AElig; &Dcaron;\n&frac34; &HilbertSpace; &DifferentialD;\n&ClockwiseContourIntegral; &ngE;\n""" <|
                \_ ->
                    """&nbsp; &amp; &copy; &AElig; &Dcaron;\n&frac34; &HilbertSpace; &DifferentialD;\n&ClockwiseContourIntegral; &ngE;\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>  &amp; © Æ Ď\n¾ ℋ ⅆ\n∲ ≧̸</p>\n"""
            ]

        ,

        describe "example 305"
            [ test """&#35; &#1234; &#992; &#0;\n""" <|
                \_ ->
                    """&#35; &#1234; &#992; &#0;\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p># Ӓ Ϡ �</p>\n"""
            ]

        ,

        describe "example 306"
            [ test """&#X22; &#XD06; &#xcab;\n""" <|
                \_ ->
                    """&#X22; &#XD06; &#xcab;\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&quot; ആ ಫ</p>\n"""
            ]

        ,

        describe "example 307"
            [ test """&nbsp &x; &#; &#x;\n&#987654321;\n&#abcdef0;\n&ThisIsNotDefined; &hi?;\n""" <|
                \_ ->
                    """&nbsp &x; &#; &#x;\n&#987654321;\n&#abcdef0;\n&ThisIsNotDefined; &hi?;\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&amp;nbsp &amp;x; &amp;#; &amp;#x;\n&amp;#987654321;\n&amp;#abcdef0;\n&amp;ThisIsNotDefined; &amp;hi?;</p>\n"""
            ]

        ,

        describe "example 308"
            [ test """&copy\n""" <|
                \_ ->
                    """&copy\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&amp;copy</p>\n"""
            ]

        ,

        describe "example 309"
            [ test """&MadeUpEntity;\n""" <|
                \_ ->
                    """&MadeUpEntity;\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&amp;MadeUpEntity;</p>\n"""
            ]

        ,

        describe "example 310"
            [ test """<a href="&ouml;&ouml;.html">\n""" <|
                \_ ->
                    """<a href="&ouml;&ouml;.html">\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<a href="&ouml;&ouml;.html">\n"""
            ]

        ,

        describe "example 311"
            [ test """[foo](/f&ouml;&ouml; "f&ouml;&ouml;")\n""" <|
                \_ ->
                    """[foo](/f&ouml;&ouml; "f&ouml;&ouml;")\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/f%C3%B6%C3%B6" title="föö">foo</a></p>\n"""
            ]

        ,

        describe "example 312"
            [ test """[foo]\n\n[foo]: /f&ouml;&ouml; "f&ouml;&ouml;"\n""" <|
                \_ ->
                    """[foo]\n\n[foo]: /f&ouml;&ouml; "f&ouml;&ouml;"\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a href="/f%C3%B6%C3%B6" title="föö">foo</a></p>\n"""
            ]

        ,

        describe "example 313"
            [ test """``` f&ouml;&ouml;\nfoo\n```\n""" <|
                \_ ->
                    """``` f&ouml;&ouml;\nfoo\n```\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code class="language-föö">foo\n</code></pre>\n"""
            ]

        ,

        describe "example 314"
            [ test """`f&ouml;&ouml;`\n""" <|
                \_ ->
                    """`f&ouml;&ouml;`\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><code>f&amp;ouml;&amp;ouml;</code></p>\n"""
            ]

        ,

        describe "example 315"
            [ test """    f&ouml;f&ouml;\n""" <|
                \_ ->
                    """    f&ouml;f&ouml;\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<pre><code>f&amp;ouml;f&amp;ouml;\n</code></pre>\n"""
            ]


        ]