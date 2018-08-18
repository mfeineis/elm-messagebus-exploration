module Dom
    exposing
        ( Document
        , Html
        , button
        , div
        , meta
        , pullNodeData
        , text
        )

import Dom.Attributes exposing (Attribute, pullAttributeData)
import Json.Encode as Encode exposing (Value)


type alias Document msg =
    { body : List (Html msg)
    , head : List (Html msg)
    , title : String
    }


type Html msg
    = Html Value


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


button : List (Attribute msg) -> List (Html msg) -> Html msg
button attrs children =
    Html <|
        encode
            { attributes = List.map pullAttributeData attrs
            , children = List.map pullNodeData children
            , tag = "button"
            , textValue = ""
            }


div : List (Attribute msg) -> List (Html msg) -> Html msg
div attrs children =
    Html <|
        encode
            { attributes = List.map pullAttributeData attrs
            , children = List.map pullNodeData children
            , tag = "div"
            , textValue = ""
            }


meta : List (Attribute msg) -> List (Html msg) -> Html msg
meta attrs children =
    Html <|
        encode
            { attributes = List.map pullAttributeData attrs
            , children = List.map pullNodeData children
            , tag = "meta"
            , textValue = ""
            }


text : String -> Html msg
text t =
    Html <|
        encode
            { attributes = []
            , children = []
            , tag = ""
            , textValue = t
            }


pullNodeData (Html json) =
    json
