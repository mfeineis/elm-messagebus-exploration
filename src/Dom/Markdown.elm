module Dom.Markdown exposing (toHtml, toHtmlString)

import Char
import Dom as Html exposing (Html)
import Parser exposing ((|.), (|=), Parser, Step(..), Trailing(..))
import Set
import Url exposing (Url)


toHtml : String -> Html msg
toHtml markdown =
    case Parser.run markdownParser markdown of
        Ok stmt ->
            render stmt

        Err reason ->
            Debug.log ("Parser error: " ++ Debug.toString reason) <|
                Html.div [] [ Html.text "Something went wrong!" ]


toHtmlString : String -> String
toHtmlString markdown =
    let
        walk block =
            case block of
                Heading level txt ->
                    if level > 6 then
                        "<p>" ++ String.repeat level "#" ++ txt ++ "</p>"
                    else
                        "<h" ++ String.fromInt level ++ ">" ++ txt ++ "</h" ++ String.fromInt level ++ ">"

                Document blocks ->
                    List.foldr (++) "\n" (List.map walk blocks)
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
    | Heading Int String


markdownParser : Parser Block
markdownParser =
    Parser.succeed identity
        |= nonEmptyItemList expression
        |> Parser.map Document


expression : Parser Block
expression =
    Parser.oneOf
        [ heading
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
            , inner = \c -> Char.isAlphaNum c || c == ' '
            , reserved = Set.empty
            }



-- Helpers, many thanks to https://github.com/jxxcarlson/meenylatex


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


spaces : Parser ()
spaces =
    Parser.chompWhile (\c -> c == ' ')


newline : Parser ()
newline =
    Parser.symbol "\n"


newlines : Parser ()
newlines =
    Parser.chompWhile (\c -> c == '\n')


nonEmptyItemList : Parser a -> Parser (List a)
nonEmptyItemList itemParser =
    itemParser
        |> Parser.andThen (\x -> itemList_ [ x ] itemParser)


itemList : Parser a -> Parser (List a)
itemList itemParser =
    itemList_ [] itemParser


itemList_ : List a -> Parser a -> Parser (List a)
itemList_ initialList itemParser =
    Parser.loop initialList (itemListHelper itemParser)


itemListHelper : Parser a -> List a -> Parser (Step (List a) (List a))
itemListHelper itemParser revItems =
    Parser.oneOf
        [ Parser.succeed (\item -> Loop (item :: revItems))
            |= itemParser
            |. Parser.symbol "\n"
        , Parser.succeed ()
            |> Parser.map (\_ -> Done (List.reverse revItems))
        ]
