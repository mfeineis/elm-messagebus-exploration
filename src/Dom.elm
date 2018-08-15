module Dom
    exposing
        ( CmdDriver
        , Document
        , DomNode
        , Renderable
        , button
        , div
        , pack
        , text
        )

import Dom.Attributes exposing (Attribute, pullAttributeData)
import Json.Decode as Decode exposing (Decoder)
import Json.Encode as Encode exposing (Value)


type alias CmdDriver msg =
    { decode : Decoder msg
    , encode : msg -> Value
    }


type alias Document =
    { body : List DomNode
    , title : String
    }


type alias Renderable =
    Value


type DomNode
    = DomNode Value


type alias NodeData =
    { attributes : List Value
    , children : List Value
    , tag : String
    , textValue : String
    }


encode : NodeData -> Value
encode { attributes, children, tag, textValue } =
    Encode.object
        [ ( "attributes", Encode.list identity attributes )
        , ( "children", Encode.list identity children )
        , ( "tag", Encode.string tag )
        , ( "textValue", Encode.string textValue )
        ]


button : List Attribute -> List DomNode -> DomNode
button attrs children =
    DomNode <|
        encode
            { attributes = List.map pullAttributeData attrs
            , children = List.map pullNodeData children
            , tag = "button"
            , textValue = ""
            }


div : List Attribute -> List DomNode -> DomNode
div attrs children =
    DomNode <|
        encode
            { attributes = List.map pullAttributeData attrs
            , children = List.map pullNodeData children
            , tag = "div"
            , textValue = ""
            }


text : String -> DomNode
text t =
    DomNode <|
        encode
            { attributes = []
            , children = []
            , tag = ""
            , textValue = t
            }


pullNodeData (DomNode json) =
    json


pack : Document -> Renderable
pack { body, title } =
    Encode.object
        [ ( "title", Encode.string title )
        , ( "body", Encode.list pullNodeData body )
        ]
