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
        walk stmt =
            case stmt of
                Heading level txt ->
                    "<h" ++ String.fromInt level ++ ">" ++ txt ++ "</h" ++ String.fromInt level ++ ">\n"

                StmtList stmts ->
                    List.foldr (++) "" (List.map walk stmts)
    in
    case Parser.run markdownParser markdown of
        Ok stmt ->
            walk stmt

        Err reason ->
            Debug.toString reason


render : Stmt -> Html msg
render stmt =
    Debug.log ("stmt: " ++ Debug.toString stmt) <|
        Html.div [] [ Html.text "!!Insert Some Markdown!!" ]



-- Actual parser


type Stmt
    = Heading Int String
      --| EmptyLine Int Int
    | StmtList (List Stmt)


markdownParser : Parser Stmt
markdownParser =
    Parser.succeed identity
        |. spaces
        |= nonEmptyItemList expression
        |> Parser.map StmtList


expression : Parser Stmt
expression =
    Parser.oneOf
        [ heading
        ]



--emptyLine : Parser Stmt
--emptyLine =
--    Parser.succeed EmptyLine
--        |= Parser.getOffset
--        |. Parser.getChompedString
--             (Parser.chompWhile (\c -> (c == ' ' || c == '\t') && c /= '\n'))
--        |= Parser.getOffset


heading : Parser Stmt
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
        |. spaces
        |= Parser.variable
            { start = Char.isAlphaNum
            , inner = \c -> c /= '\n'
            , reserved = Set.empty
            }
        |. newline



-- Helpers, many thanks to https://github.com/jxxcarlson/meenylatex


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
        , Parser.succeed ()
            |> Parser.map (\_ -> Done (List.reverse revItems))
        ]
