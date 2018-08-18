module Dom.Static exposing (Renderable, render)

import Dom exposing (Document, pullNodeData)
import Json.Encode as Encode exposing (Value)


type alias Renderable =
    Value


render : Document msg -> Renderable
render { body, head, title } =
    Encode.object
        [ ( "title", Encode.string title )
        , ( "head", Encode.list pullNodeData head )
        , ( "body", Encode.list pullNodeData body )
        ]
