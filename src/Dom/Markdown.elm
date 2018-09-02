module Dom.Markdown exposing (toHtml, toHtmlString)

import Char
import Dom as Html exposing (Html)
import Parser exposing ((|.), (|=), Parser, Step(..), Trailing(..))
import Set
import Url exposing (Url)


toHtml : String -> Html msg
toHtml markdown =
    case Parser.run markdownParser markdown of
        Ok doc ->
            render doc

        Err reason ->
            Debug.log ("Parser error: " ++ Debug.toString reason) <|
                Html.div [] [ Html.text "Something went wrong!" ]


toHtmlString : String -> String
toHtmlString markdown =
    let
        walk block =
            case block of
                Document blocks ->
                    List.foldr (++) "\n" (List.map walk blocks)

                EmptyLine ->
                    "\n"

                Heading level txt ->
                    "<h" ++ String.fromInt level ++ ">" ++ txt ++ "</h" ++ String.fromInt level ++ ">"
    in
    case Parser.run markdownParser markdown of
        Ok block ->
            walk block

        Err reason ->
            Debug.toString reason


render : Block -> Html msg
render block =
    Debug.log ("block: " ++ Debug.toString block) <|
        Html.div [] [ Html.text "!!Insert Some Markdown!!" ]



-- Actual parser


type Block
    = Document (List Block)
    | EmptyLine
    | Heading Int String


markdownParser : Parser Block
markdownParser =
    Parser.succeed identity
        |= oneOrMore expression
        |> Parser.map Document


expression : Parser Block
expression =
    Parser.oneOf
        --[ heading
        [ emptyLine
        ]


heading : Parser Block
heading =
    Parser.succeed Heading
        |= Parser.oneOf
            [ Parser.succeed 6
                |. Parser.symbol "######"
            , Parser.succeed 5
                |. Parser.symbol "#####"
            , Parser.succeed 4
                |. Parser.symbol "####"
            , Parser.succeed 3
                |. Parser.symbol "###"
            , Parser.succeed 2
                |. Parser.symbol "##"
            , Parser.succeed 1
                |. Parser.symbol "#"
            ]
        |. oneOrMoreSpace
        |= Parser.variable
            { start = \c -> c /= ' '
            , inner = \c -> c /= '\n'
            , reserved = Set.empty
            }


emptyLine : Parser Block
emptyLine =
    Parser.succeed (\col1 col2 -> col2 - col1)
        |= Parser.getOffset
        |. Parser.chompWhile (\c -> c == ' ' || c == '\r' || c == '\t')
        |= Parser.getOffset
        |> Parser.andThen
           (\delta ->
                if delta > 0 then
                    Parser.succeed EmptyLine
                else
                    Parser.problem "No whitespace consumed!"
           )


-- Helpers, many thanks to https://github.com/jxxcarlson/meenylatex


--spaces : Parser ()
--spaces =
--    Parser.chompWhile (\c -> c == ' ')


--newline : Parser ()
--newline =
--    Parser.symbol "\n"


--newlines : Parser ()
--newlines =
--    Parser.chompWhile (\c -> c == '\n')


oneOrMoreSpace : Parser ()
oneOrMoreSpace =
    Parser.succeed (\col1 col2 -> col2 - col1)
        |= Parser.getOffset
        |. Parser.chompIf (\c -> c == ' ')
        |= Parser.getOffset
        |> Parser.andThen
            (\delta ->
                if delta > 0 then
                    Parser.succeed ()
                else
                    Parser.problem "No whitespace consumed!"
            )


oneOrMore : Parser a -> Parser (List a)
oneOrMore itemParser =
    let
        loop initialList =
            Parser.loop initialList
                (\revItems ->
                    Parser.oneOf
                        [ Parser.succeed (\item -> Loop (item :: revItems))
                            |= itemParser
                            |. Parser.oneOf
                                [ Parser.chompIf (\c -> c == '\n')
                                , Parser.end
                                ]
                        , Parser.succeed ()
                            |> Parser.map (\_ -> Done (List.reverse revItems))
                        ]
                )
    in
    itemParser
        |> Parser.andThen (\x -> loop [ x ])

