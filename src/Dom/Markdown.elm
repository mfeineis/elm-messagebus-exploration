module Dom.Markdown exposing (toHtml)

import Char
import Dom as Html exposing (Html)
import Parser exposing ((|.), (|=), Parser, Step(..), Trailing(..), spaces)
import Set
import Url exposing (Url)


toHtml : String -> Html msg
toHtml markdown =
    case Parser.run markdownParser markdown of
        Ok nodes ->
            render nodes

        Err reason ->
            Debug.log ("Parser error: " ++ Debug.toString reason) <|
                Html.div [] [ Html.text "Something went wrong!" ]


type Stmt
    = Heading Int String
    | EmptyLine Int Int
    | Paragraph (List Content)
    | Reference String


type Content
    = Link String Url
    | ReferenceLink String
    | TextFragment String


render : List Stmt -> Html msg
render _ =
    Html.div [] [ Html.text "<<Insert Some Markdown>>" ]


markdownParser : Parser (List Stmt)
markdownParser =
    let
        helper revStmts =
            Parser.oneOf
                [ Parser.succeed (\stmt -> Loop (stmt :: revStmts))
                    |= heading
                    |. spaces
                    |. Parser.symbol "\n"
                , Parser.succeed (\stmt -> Loop (stmt :: revStmts))
                    |= emptyLine
                    |. Parser.symbol "\n"
                , Parser.succeed ()
                    |> Parser.map (\_ -> Done (List.reverse revStmts))
                ]
    in
    Parser.loop [] helper


emptyLine : Parser Stmt
emptyLine =
    Parser.succeed EmptyLine
        |= Parser.getOffset
        |. Parser.getChompedString (Parser.chompWhile (\c -> c /= '\n'))
        |= Parser.getOffset


heading : Parser Stmt
heading =
    Parser.succeed Heading
        |= Parser.oneOf
           [ Parser.succeed 1
               |. Parser.keyword "#"
           , Parser.succeed 2
               |. Parser.keyword "##"
           , Parser.succeed 3
               |. Parser.keyword "###"
           , Parser.succeed 4
               |. Parser.keyword "####"
           , Parser.succeed 5
               |. Parser.keyword "#####"
           ]
        |. spaces
        |= Parser.variable
           { start = Char.isAlphaNum
           , inner = \c -> c /= '\n'
           , reserved = Set.empty
           }
