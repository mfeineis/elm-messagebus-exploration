module Test.Generated.EmphasisAndStrongEmphasis exposing (suite)

-- | These test cases are generated via "make markdown.spec.generate"

import Expect
import Test exposing (Test, describe, test)

import Dom.Markdown as Markdown

suite : Test
suite =
    describe "Emphasis and strong emphasis"
        [

        describe "example 333"
            [ test """*foo bar*\n""" <|
                \_ ->
                    """*foo bar*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo bar</em></p>\n"""
            ]

        ,

        describe "example 334"
            [ test """a * foo bar*\n""" <|
                \_ ->
                    """a * foo bar*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>a * foo bar*</p>\n"""
            ]

        ,

        describe "example 335"
            [ test """a*"foo"*\n""" <|
                \_ ->
                    """a*"foo"*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>a*&quot;foo&quot;*</p>\n"""
            ]

        ,

        describe "example 336"
            [ test """* a *\n""" <|
                \_ ->
                    """* a *\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>* a *</p>\n"""
            ]

        ,

        describe "example 337"
            [ test """foo*bar*\n""" <|
                \_ ->
                    """foo*bar*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo<em>bar</em></p>\n"""
            ]

        ,

        describe "example 338"
            [ test """5*6*78\n""" <|
                \_ ->
                    """5*6*78\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>5<em>6</em>78</p>\n"""
            ]

        ,

        describe "example 339"
            [ test """_foo bar_\n""" <|
                \_ ->
                    """_foo bar_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo bar</em></p>\n"""
            ]

        ,

        describe "example 340"
            [ test """_ foo bar_\n""" <|
                \_ ->
                    """_ foo bar_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>_ foo bar_</p>\n"""
            ]

        ,

        describe "example 341"
            [ test """a_"foo"_\n""" <|
                \_ ->
                    """a_"foo"_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>a_&quot;foo&quot;_</p>\n"""
            ]

        ,

        describe "example 342"
            [ test """foo_bar_\n""" <|
                \_ ->
                    """foo_bar_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo_bar_</p>\n"""
            ]

        ,

        describe "example 343"
            [ test """5_6_78\n""" <|
                \_ ->
                    """5_6_78\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>5_6_78</p>\n"""
            ]

        ,

        describe "example 344"
            [ test """пристаням_стремятся_\n""" <|
                \_ ->
                    """пристаням_стремятся_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>пристаням_стремятся_</p>\n"""
            ]

        ,

        describe "example 345"
            [ test """aa_"bb"_cc\n""" <|
                \_ ->
                    """aa_"bb"_cc\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>aa_&quot;bb&quot;_cc</p>\n"""
            ]

        ,

        describe "example 346"
            [ test """foo-_(bar)_\n""" <|
                \_ ->
                    """foo-_(bar)_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo-<em>(bar)</em></p>\n"""
            ]

        ,

        describe "example 347"
            [ test """_foo*\n""" <|
                \_ ->
                    """_foo*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>_foo*</p>\n"""
            ]

        ,

        describe "example 348"
            [ test """*foo bar *\n""" <|
                \_ ->
                    """*foo bar *\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>*foo bar *</p>\n"""
            ]

        ,

        describe "example 349"
            [ test """*foo bar\n*\n""" <|
                \_ ->
                    """*foo bar\n*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>*foo bar\n*</p>\n"""
            ]

        ,

        describe "example 350"
            [ test """*(*foo)\n""" <|
                \_ ->
                    """*(*foo)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>*(*foo)</p>\n"""
            ]

        ,

        describe "example 351"
            [ test """*(*foo*)*\n""" <|
                \_ ->
                    """*(*foo*)*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>(<em>foo</em>)</em></p>\n"""
            ]

        ,

        describe "example 352"
            [ test """*foo*bar\n""" <|
                \_ ->
                    """*foo*bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo</em>bar</p>\n"""
            ]

        ,

        describe "example 353"
            [ test """_foo bar _\n""" <|
                \_ ->
                    """_foo bar _\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>_foo bar _</p>\n"""
            ]

        ,

        describe "example 354"
            [ test """_(_foo)\n""" <|
                \_ ->
                    """_(_foo)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>_(_foo)</p>\n"""
            ]

        ,

        describe "example 355"
            [ test """_(_foo_)_\n""" <|
                \_ ->
                    """_(_foo_)_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>(<em>foo</em>)</em></p>\n"""
            ]

        ,

        describe "example 356"
            [ test """_foo_bar\n""" <|
                \_ ->
                    """_foo_bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>_foo_bar</p>\n"""
            ]

        ,

        describe "example 357"
            [ test """_пристаням_стремятся\n""" <|
                \_ ->
                    """_пристаням_стремятся\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>_пристаням_стремятся</p>\n"""
            ]

        ,

        describe "example 358"
            [ test """_foo_bar_baz_\n""" <|
                \_ ->
                    """_foo_bar_baz_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo_bar_baz</em></p>\n"""
            ]

        ,

        describe "example 359"
            [ test """_(bar)_.\n""" <|
                \_ ->
                    """_(bar)_.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>(bar)</em>.</p>\n"""
            ]

        ,

        describe "example 360"
            [ test """**foo bar**\n""" <|
                \_ ->
                    """**foo bar**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo bar</strong></p>\n"""
            ]

        ,

        describe "example 361"
            [ test """** foo bar**\n""" <|
                \_ ->
                    """** foo bar**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>** foo bar**</p>\n"""
            ]

        ,

        describe "example 362"
            [ test """a**"foo"**\n""" <|
                \_ ->
                    """a**"foo"**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>a**&quot;foo&quot;**</p>\n"""
            ]

        ,

        describe "example 363"
            [ test """foo**bar**\n""" <|
                \_ ->
                    """foo**bar**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo<strong>bar</strong></p>\n"""
            ]

        ,

        describe "example 364"
            [ test """__foo bar__\n""" <|
                \_ ->
                    """__foo bar__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo bar</strong></p>\n"""
            ]

        ,

        describe "example 365"
            [ test """__ foo bar__\n""" <|
                \_ ->
                    """__ foo bar__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>__ foo bar__</p>\n"""
            ]

        ,

        describe "example 366"
            [ test """__\nfoo bar__\n""" <|
                \_ ->
                    """__\nfoo bar__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>__\nfoo bar__</p>\n"""
            ]

        ,

        describe "example 367"
            [ test """a__"foo"__\n""" <|
                \_ ->
                    """a__"foo"__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>a__&quot;foo&quot;__</p>\n"""
            ]

        ,

        describe "example 368"
            [ test """foo__bar__\n""" <|
                \_ ->
                    """foo__bar__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo__bar__</p>\n"""
            ]

        ,

        describe "example 369"
            [ test """5__6__78\n""" <|
                \_ ->
                    """5__6__78\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>5__6__78</p>\n"""
            ]

        ,

        describe "example 370"
            [ test """пристаням__стремятся__\n""" <|
                \_ ->
                    """пристаням__стремятся__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>пристаням__стремятся__</p>\n"""
            ]

        ,

        describe "example 371"
            [ test """__foo, __bar__, baz__\n""" <|
                \_ ->
                    """__foo, __bar__, baz__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo, <strong>bar</strong>, baz</strong></p>\n"""
            ]

        ,

        describe "example 372"
            [ test """foo-__(bar)__\n""" <|
                \_ ->
                    """foo-__(bar)__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo-<strong>(bar)</strong></p>\n"""
            ]

        ,

        describe "example 373"
            [ test """**foo bar **\n""" <|
                \_ ->
                    """**foo bar **\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>**foo bar **</p>\n"""
            ]

        ,

        describe "example 374"
            [ test """**(**foo)\n""" <|
                \_ ->
                    """**(**foo)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>**(**foo)</p>\n"""
            ]

        ,

        describe "example 375"
            [ test """*(**foo**)*\n""" <|
                \_ ->
                    """*(**foo**)*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>(<strong>foo</strong>)</em></p>\n"""
            ]

        ,

        describe "example 376"
            [ test """**Gomphocarpus (*Gomphocarpus physocarpus*, syn.\n*Asclepias physocarpa*)**\n""" <|
                \_ ->
                    """**Gomphocarpus (*Gomphocarpus physocarpus*, syn.\n*Asclepias physocarpa*)**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>Gomphocarpus (<em>Gomphocarpus physocarpus</em>, syn.\n<em>Asclepias physocarpa</em>)</strong></p>\n"""
            ]

        ,

        describe "example 377"
            [ test """**foo "*bar*" foo**\n""" <|
                \_ ->
                    """**foo "*bar*" foo**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo &quot;<em>bar</em>&quot; foo</strong></p>\n"""
            ]

        ,

        describe "example 378"
            [ test """**foo**bar\n""" <|
                \_ ->
                    """**foo**bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo</strong>bar</p>\n"""
            ]

        ,

        describe "example 379"
            [ test """__foo bar __\n""" <|
                \_ ->
                    """__foo bar __\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>__foo bar __</p>\n"""
            ]

        ,

        describe "example 380"
            [ test """__(__foo)\n""" <|
                \_ ->
                    """__(__foo)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>__(__foo)</p>\n"""
            ]

        ,

        describe "example 381"
            [ test """_(__foo__)_\n""" <|
                \_ ->
                    """_(__foo__)_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>(<strong>foo</strong>)</em></p>\n"""
            ]

        ,

        describe "example 382"
            [ test """__foo__bar\n""" <|
                \_ ->
                    """__foo__bar\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>__foo__bar</p>\n"""
            ]

        ,

        describe "example 383"
            [ test """__пристаням__стремятся\n""" <|
                \_ ->
                    """__пристаням__стремятся\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>__пристаням__стремятся</p>\n"""
            ]

        ,

        describe "example 384"
            [ test """__foo__bar__baz__\n""" <|
                \_ ->
                    """__foo__bar__baz__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo__bar__baz</strong></p>\n"""
            ]

        ,

        describe "example 385"
            [ test """__(bar)__.\n""" <|
                \_ ->
                    """__(bar)__.\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>(bar)</strong>.</p>\n"""
            ]

        ,

        describe "example 386"
            [ test """*foo [bar](/url)*\n""" <|
                \_ ->
                    """*foo [bar](/url)*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo <a href="/url">bar</a></em></p>\n"""
            ]

        ,

        describe "example 387"
            [ test """*foo\nbar*\n""" <|
                \_ ->
                    """*foo\nbar*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo\nbar</em></p>\n"""
            ]

        ,

        describe "example 388"
            [ test """_foo __bar__ baz_\n""" <|
                \_ ->
                    """_foo __bar__ baz_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo <strong>bar</strong> baz</em></p>\n"""
            ]

        ,

        describe "example 389"
            [ test """_foo _bar_ baz_\n""" <|
                \_ ->
                    """_foo _bar_ baz_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo <em>bar</em> baz</em></p>\n"""
            ]

        ,

        describe "example 390"
            [ test """__foo_ bar_\n""" <|
                \_ ->
                    """__foo_ bar_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em><em>foo</em> bar</em></p>\n"""
            ]

        ,

        describe "example 391"
            [ test """*foo *bar**\n""" <|
                \_ ->
                    """*foo *bar**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo <em>bar</em></em></p>\n"""
            ]

        ,

        describe "example 392"
            [ test """*foo **bar** baz*\n""" <|
                \_ ->
                    """*foo **bar** baz*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo <strong>bar</strong> baz</em></p>\n"""
            ]

        ,

        describe "example 393"
            [ test """*foo**bar**baz*\n""" <|
                \_ ->
                    """*foo**bar**baz*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo<strong>bar</strong>baz</em></p>\n"""
            ]

        ,

        describe "example 394"
            [ test """*foo**bar*\n""" <|
                \_ ->
                    """*foo**bar*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo**bar</em></p>\n"""
            ]

        ,

        describe "example 395"
            [ test """***foo** bar*\n""" <|
                \_ ->
                    """***foo** bar*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em><strong>foo</strong> bar</em></p>\n"""
            ]

        ,

        describe "example 396"
            [ test """*foo **bar***\n""" <|
                \_ ->
                    """*foo **bar***\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo <strong>bar</strong></em></p>\n"""
            ]

        ,

        describe "example 397"
            [ test """*foo**bar***\n""" <|
                \_ ->
                    """*foo**bar***\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo<strong>bar</strong></em></p>\n"""
            ]

        ,

        describe "example 398"
            [ test """*foo **bar *baz* bim** bop*\n""" <|
                \_ ->
                    """*foo **bar *baz* bim** bop*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo <strong>bar <em>baz</em> bim</strong> bop</em></p>\n"""
            ]

        ,

        describe "example 399"
            [ test """*foo [*bar*](/url)*\n""" <|
                \_ ->
                    """*foo [*bar*](/url)*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo <a href="/url"><em>bar</em></a></em></p>\n"""
            ]

        ,

        describe "example 400"
            [ test """** is not an empty emphasis\n""" <|
                \_ ->
                    """** is not an empty emphasis\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>** is not an empty emphasis</p>\n"""
            ]

        ,

        describe "example 401"
            [ test """**** is not an empty strong emphasis\n""" <|
                \_ ->
                    """**** is not an empty strong emphasis\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>**** is not an empty strong emphasis</p>\n"""
            ]

        ,

        describe "example 402"
            [ test """**foo [bar](/url)**\n""" <|
                \_ ->
                    """**foo [bar](/url)**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo <a href="/url">bar</a></strong></p>\n"""
            ]

        ,

        describe "example 403"
            [ test """**foo\nbar**\n""" <|
                \_ ->
                    """**foo\nbar**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo\nbar</strong></p>\n"""
            ]

        ,

        describe "example 404"
            [ test """__foo _bar_ baz__\n""" <|
                \_ ->
                    """__foo _bar_ baz__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo <em>bar</em> baz</strong></p>\n"""
            ]

        ,

        describe "example 405"
            [ test """__foo __bar__ baz__\n""" <|
                \_ ->
                    """__foo __bar__ baz__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo <strong>bar</strong> baz</strong></p>\n"""
            ]

        ,

        describe "example 406"
            [ test """____foo__ bar__\n""" <|
                \_ ->
                    """____foo__ bar__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong><strong>foo</strong> bar</strong></p>\n"""
            ]

        ,

        describe "example 407"
            [ test """**foo **bar****\n""" <|
                \_ ->
                    """**foo **bar****\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo <strong>bar</strong></strong></p>\n"""
            ]

        ,

        describe "example 408"
            [ test """**foo *bar* baz**\n""" <|
                \_ ->
                    """**foo *bar* baz**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo <em>bar</em> baz</strong></p>\n"""
            ]

        ,

        describe "example 409"
            [ test """**foo*bar*baz**\n""" <|
                \_ ->
                    """**foo*bar*baz**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo<em>bar</em>baz</strong></p>\n"""
            ]

        ,

        describe "example 410"
            [ test """***foo* bar**\n""" <|
                \_ ->
                    """***foo* bar**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong><em>foo</em> bar</strong></p>\n"""
            ]

        ,

        describe "example 411"
            [ test """**foo *bar***\n""" <|
                \_ ->
                    """**foo *bar***\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo <em>bar</em></strong></p>\n"""
            ]

        ,

        describe "example 412"
            [ test """**foo *bar **baz**\nbim* bop**\n""" <|
                \_ ->
                    """**foo *bar **baz**\nbim* bop**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo <em>bar <strong>baz</strong>\nbim</em> bop</strong></p>\n"""
            ]

        ,

        describe "example 413"
            [ test """**foo [*bar*](/url)**\n""" <|
                \_ ->
                    """**foo [*bar*](/url)**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo <a href="/url"><em>bar</em></a></strong></p>\n"""
            ]

        ,

        describe "example 414"
            [ test """__ is not an empty emphasis\n""" <|
                \_ ->
                    """__ is not an empty emphasis\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>__ is not an empty emphasis</p>\n"""
            ]

        ,

        describe "example 415"
            [ test """____ is not an empty strong emphasis\n""" <|
                \_ ->
                    """____ is not an empty strong emphasis\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>____ is not an empty strong emphasis</p>\n"""
            ]

        ,

        describe "example 416"
            [ test """foo ***\n""" <|
                \_ ->
                    """foo ***\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo ***</p>\n"""
            ]

        ,

        describe "example 417"
            [ test """foo *\\**\n""" <|
                \_ ->
                    """foo *\\**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo <em>*</em></p>\n"""
            ]

        ,

        describe "example 418"
            [ test """foo *_*\n""" <|
                \_ ->
                    """foo *_*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo <em>_</em></p>\n"""
            ]

        ,

        describe "example 419"
            [ test """foo *****\n""" <|
                \_ ->
                    """foo *****\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo *****</p>\n"""
            ]

        ,

        describe "example 420"
            [ test """foo **\\***\n""" <|
                \_ ->
                    """foo **\\***\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo <strong>*</strong></p>\n"""
            ]

        ,

        describe "example 421"
            [ test """foo **_**\n""" <|
                \_ ->
                    """foo **_**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo <strong>_</strong></p>\n"""
            ]

        ,

        describe "example 422"
            [ test """**foo*\n""" <|
                \_ ->
                    """**foo*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>*<em>foo</em></p>\n"""
            ]

        ,

        describe "example 423"
            [ test """*foo**\n""" <|
                \_ ->
                    """*foo**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo</em>*</p>\n"""
            ]

        ,

        describe "example 424"
            [ test """***foo**\n""" <|
                \_ ->
                    """***foo**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>*<strong>foo</strong></p>\n"""
            ]

        ,

        describe "example 425"
            [ test """****foo*\n""" <|
                \_ ->
                    """****foo*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>***<em>foo</em></p>\n"""
            ]

        ,

        describe "example 426"
            [ test """**foo***\n""" <|
                \_ ->
                    """**foo***\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo</strong>*</p>\n"""
            ]

        ,

        describe "example 427"
            [ test """*foo****\n""" <|
                \_ ->
                    """*foo****\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo</em>***</p>\n"""
            ]

        ,

        describe "example 428"
            [ test """foo ___\n""" <|
                \_ ->
                    """foo ___\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo ___</p>\n"""
            ]

        ,

        describe "example 429"
            [ test """foo _\\__\n""" <|
                \_ ->
                    """foo _\\__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo <em>_</em></p>\n"""
            ]

        ,

        describe "example 430"
            [ test """foo _*_\n""" <|
                \_ ->
                    """foo _*_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo <em>*</em></p>\n"""
            ]

        ,

        describe "example 431"
            [ test """foo _____\n""" <|
                \_ ->
                    """foo _____\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo _____</p>\n"""
            ]

        ,

        describe "example 432"
            [ test """foo __\\___\n""" <|
                \_ ->
                    """foo __\\___\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo <strong>_</strong></p>\n"""
            ]

        ,

        describe "example 433"
            [ test """foo __*__\n""" <|
                \_ ->
                    """foo __*__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>foo <strong>*</strong></p>\n"""
            ]

        ,

        describe "example 434"
            [ test """__foo_\n""" <|
                \_ ->
                    """__foo_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>_<em>foo</em></p>\n"""
            ]

        ,

        describe "example 435"
            [ test """_foo__\n""" <|
                \_ ->
                    """_foo__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo</em>_</p>\n"""
            ]

        ,

        describe "example 436"
            [ test """___foo__\n""" <|
                \_ ->
                    """___foo__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>_<strong>foo</strong></p>\n"""
            ]

        ,

        describe "example 437"
            [ test """____foo_\n""" <|
                \_ ->
                    """____foo_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>___<em>foo</em></p>\n"""
            ]

        ,

        describe "example 438"
            [ test """__foo___\n""" <|
                \_ ->
                    """__foo___\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo</strong>_</p>\n"""
            ]

        ,

        describe "example 439"
            [ test """_foo____\n""" <|
                \_ ->
                    """_foo____\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo</em>___</p>\n"""
            ]

        ,

        describe "example 440"
            [ test """**foo**\n""" <|
                \_ ->
                    """**foo**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo</strong></p>\n"""
            ]

        ,

        describe "example 441"
            [ test """*_foo_*\n""" <|
                \_ ->
                    """*_foo_*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em><em>foo</em></em></p>\n"""
            ]

        ,

        describe "example 442"
            [ test """__foo__\n""" <|
                \_ ->
                    """__foo__\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong>foo</strong></p>\n"""
            ]

        ,

        describe "example 443"
            [ test """_*foo*_\n""" <|
                \_ ->
                    """_*foo*_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em><em>foo</em></em></p>\n"""
            ]

        ,

        describe "example 444"
            [ test """****foo****\n""" <|
                \_ ->
                    """****foo****\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong><strong>foo</strong></strong></p>\n"""
            ]

        ,

        describe "example 445"
            [ test """____foo____\n""" <|
                \_ ->
                    """____foo____\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong><strong>foo</strong></strong></p>\n"""
            ]

        ,

        describe "example 446"
            [ test """******foo******\n""" <|
                \_ ->
                    """******foo******\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><strong><strong><strong>foo</strong></strong></strong></p>\n"""
            ]

        ,

        describe "example 447"
            [ test """***foo***\n""" <|
                \_ ->
                    """***foo***\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em><strong>foo</strong></em></p>\n"""
            ]

        ,

        describe "example 448"
            [ test """_____foo_____\n""" <|
                \_ ->
                    """_____foo_____\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em><strong><strong>foo</strong></strong></em></p>\n"""
            ]

        ,

        describe "example 449"
            [ test """*foo _bar* baz_\n""" <|
                \_ ->
                    """*foo _bar* baz_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo _bar</em> baz_</p>\n"""
            ]

        ,

        describe "example 450"
            [ test """*foo __bar *baz bim__ bam*\n""" <|
                \_ ->
                    """*foo __bar *baz bim__ bam*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>foo <strong>bar *baz bim</strong> bam</em></p>\n"""
            ]

        ,

        describe "example 451"
            [ test """**foo **bar baz**\n""" <|
                \_ ->
                    """**foo **bar baz**\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>**foo <strong>bar baz</strong></p>\n"""
            ]

        ,

        describe "example 452"
            [ test """*foo *bar baz*\n""" <|
                \_ ->
                    """*foo *bar baz*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>*foo <em>bar baz</em></p>\n"""
            ]

        ,

        describe "example 453"
            [ test """*[bar*](/url)\n""" <|
                \_ ->
                    """*[bar*](/url)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>*<a href="/url">bar*</a></p>\n"""
            ]

        ,

        describe "example 454"
            [ test """_foo [bar_](/url)\n""" <|
                \_ ->
                    """_foo [bar_](/url)\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>_foo <a href="/url">bar_</a></p>\n"""
            ]

        ,

        describe "example 455"
            [ test """*<img src="foo" title="*"/>\n""" <|
                \_ ->
                    """*<img src="foo" title="*"/>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>*<img src="foo" title="*"/></p>\n"""
            ]

        ,

        describe "example 456"
            [ test """**<a href="**">\n""" <|
                \_ ->
                    """**<a href="**">\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>**<a href="**"></p>\n"""
            ]

        ,

        describe "example 457"
            [ test """__<a href="__">\n""" <|
                \_ ->
                    """__<a href="__">\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>__<a href="__"></p>\n"""
            ]

        ,

        describe "example 458"
            [ test """*a `*`*\n""" <|
                \_ ->
                    """*a `*`*\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>a <code>*</code></em></p>\n"""
            ]

        ,

        describe "example 459"
            [ test """_a `_`_\n""" <|
                \_ ->
                    """_a `_`_\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p><em>a <code>_</code></em></p>\n"""
            ]

        ,

        describe "example 460"
            [ test """**a<http://foo.bar/?q=**>\n""" <|
                \_ ->
                    """**a<http://foo.bar/?q=**>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>**a<a href="http://foo.bar/?q=**">http://foo.bar/?q=**</a></p>\n"""
            ]

        ,

        describe "example 461"
            [ test """__a<http://foo.bar/?q=__>\n""" <|
                \_ ->
                    """__a<http://foo.bar/?q=__>\n"""
                        |> Markdown.toHtmlString
                        |> Expect.equal """<p>__a<a href="http://foo.bar/?q=__">http://foo.bar/?q=__</a></p>\n"""
            ]


        ]