module Dom.Static exposing (Renderable, render)

import Dom exposing (Document, Html)
import Dom.Internals.Html exposing (pullNodeData)
import Json.Encode as Encode exposing (Value)


type alias Renderable =
    Value


render : List (Html msg) -> Document msg -> Renderable
render head { body, title } =
    Encode.object
        [ ( "title", Encode.string title )
        , ( "head", Encode.list pullNodeData head )
        , ( "body", Encode.list pullNodeData body )
        ]
