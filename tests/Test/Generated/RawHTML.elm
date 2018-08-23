module Test.Generated.RawHTML exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Raw HTML"
        [

        describe "example 587"
            [ test """<a><bab><c2c>\n""" <|
                \_ ->
                    """<a><bab><c2c>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a><bab><c2c></p>\n"""
            ]

        ,

        describe "example 588"
            [ test """<a/><b2/>\n""" <|
                \_ ->
                    """<a/><b2/>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a/><b2/></p>\n"""
            ]

        ,

        describe "example 589"
            [ test """<a  /><b2\ndata="foo" >\n""" <|
                \_ ->
                    """<a  /><b2\ndata="foo" >\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a  /><b2\ndata="foo" ></p>\n"""
            ]

        ,

        describe "example 590"
            [ test """<a foo="bar" bam = 'baz <em>"</em>'\n_boolean zoop:33=zoop:33 />\n""" <|
                \_ ->
                    """<a foo="bar" bam = 'baz <em>"</em>'\n_boolean zoop:33=zoop:33 />\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><a foo="bar" bam = 'baz <em>"</em>'\n_boolean zoop:33=zoop:33 /></p>\n"""
            ]

        ,

        describe "example 591"
            [ test """Foo <responsive-image src="foo.jpg" />\n""" <|
                \_ ->
                    """Foo <responsive-image src="foo.jpg" />\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>Foo <responsive-image src="foo.jpg" /></p>\n"""
            ]

        ,

        describe "example 592"
            [ test """<33> <__>\n""" <|
                \_ ->
                    """<33> <__>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&lt;33&gt; &lt;__&gt;</p>\n"""
            ]

        ,

        describe "example 593"
            [ test """<a h*#ref="hi">\n""" <|
                \_ ->
                    """<a h*#ref="hi">\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&lt;a h*#ref=&quot;hi&quot;&gt;</p>\n"""
            ]

        ,

        describe "example 594"
            [ test """<a href="hi'> <a href=hi'>\n""" <|
                \_ ->
                    """<a href="hi'> <a href=hi'>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&lt;a href=&quot;hi'&gt; &lt;a href=hi'&gt;</p>\n"""
            ]

        ,

        describe "example 595"
            [ test """< a><\nfoo><bar/ >\n<foo bar=baz\nbim!bop />\n""" <|
                \_ ->
                    """< a><\nfoo><bar/ >\n<foo bar=baz\nbim!bop />\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&lt; a&gt;&lt;\nfoo&gt;&lt;bar/ &gt;\n&lt;foo bar=baz\nbim!bop /&gt;</p>\n"""
            ]

        ,

        describe "example 596"
            [ test """<a href='bar'title=title>\n""" <|
                \_ ->
                    """<a href='bar'title=title>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&lt;a href='bar'title=title&gt;</p>\n"""
            ]

        ,

        describe "example 597"
            [ test """</a></foo >\n""" <|
                \_ ->
                    """</a></foo >\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p></a></foo ></p>\n"""
            ]

        ,

        describe "example 598"
            [ test """</a href="foo">\n""" <|
                \_ ->
                    """</a href="foo">\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&lt;/a href=&quot;foo&quot;&gt;</p>\n"""
            ]

        ,

        describe "example 599"
            [ test """foo <!-- this is a\ncomment - with hyphen -->\n""" <|
                \_ ->
                    """foo <!-- this is a\ncomment - with hyphen -->\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo <!-- this is a\ncomment - with hyphen --></p>\n"""
            ]

        ,

        describe "example 600"
            [ test """foo <!-- not a comment -- two hyphens -->\n""" <|
                \_ ->
                    """foo <!-- not a comment -- two hyphens -->\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo &lt;!-- not a comment -- two hyphens --&gt;</p>\n"""
            ]

        ,

        describe "example 601"
            [ test """foo <!--> foo -->\n\nfoo <!-- foo--->\n""" <|
                \_ ->
                    """foo <!--> foo -->\n\nfoo <!-- foo--->\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo &lt;!--&gt; foo --&gt;</p>\n<p>foo &lt;!-- foo---&gt;</p>\n"""
            ]

        ,

        describe "example 602"
            [ test """foo <?php echo $a; ?>\n""" <|
                \_ ->
                    """foo <?php echo $a; ?>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo <?php echo $a; ?></p>\n"""
            ]

        ,

        describe "example 603"
            [ test """foo <!ELEMENT br EMPTY>\n""" <|
                \_ ->
                    """foo <!ELEMENT br EMPTY>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo <!ELEMENT br EMPTY></p>\n"""
            ]

        ,

        describe "example 604"
            [ test """foo <![CDATA[>&<]]>\n""" <|
                \_ ->
                    """foo <![CDATA[>&<]]>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo <![CDATA[>&<]]></p>\n"""
            ]

        ,

        describe "example 605"
            [ test """foo <a href="&ouml;">\n""" <|
                \_ ->
                    """foo <a href="&ouml;">\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo <a href="&ouml;"></p>\n"""
            ]

        ,

        describe "example 606"
            [ test """foo <a href="\\*">\n""" <|
                \_ ->
                    """foo <a href="\\*">\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo <a href="\\*"></p>\n"""
            ]

        ,

        describe "example 607"
            [ test """<a href="\\"">\n""" <|
                \_ ->
                    """<a href="\\"">\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>&lt;a href=&quot;&quot;&quot;&gt;</p>\n"""
            ]


        ]