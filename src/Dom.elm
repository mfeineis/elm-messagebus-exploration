module Dom
    exposing
        ( Document
        , Html
        , button
        , div
        , node
        , text
        )

import Dom.Internals.Attributes exposing (Attribute, pullAttributeData)
import Dom.Internals.Html exposing (createNode, pullNodeData)
import Json.Encode as Encode exposing (Value)


type alias Html msg =
    Dom.Internals.Html.Html msg


type alias Document msg =
    { body : List (Html msg)
    , title : String
    }


type alias NodeData =
    { attributes : List Value
    , children : List Value
    , tag : String
    , textValue : String
    }



-- Tags


button : List (Attribute msg) -> List (Html msg) -> Html msg
button =
    node "button"


div : List (Attribute msg) -> List (Html msg) -> Html msg
div =
    node "div"


li : List (Attribute msg) -> List (Html msg) -> Html msg
li =
    node "li"


ol : List (Attribute msg) -> List (Html msg) -> Html msg
ol =
    node "ol"


p : List (Attribute msg) -> List (Html msg) -> Html msg
p =
    node "p"


ul : List (Attribute msg) -> List (Html msg) -> Html msg
ul =
    node "ul"



-- Helpers


encode : NodeData -> Value
encode { attributes, children, tag, textValue } =
    Encode.object
        [ ( "attributes", Encode.list identity attributes )
        , ( "children", Encode.list identity children )
        , ( "tag", Encode.string tag )
        , ( "textValue", Encode.string textValue )
        ]


node : String -> List (Attribute msg) -> List (Html msg) -> Html msg
node tag attrs children =
    createNode <|
        encode
            { attributes = List.map pullAttributeData attrs
            , children = List.map pullNodeData children
            , tag = tag
            , textValue = ""
            }


text : String -> Html msg
text t =
    createNode <|
        encode
            { attributes = []
            , children = []
            , tag = ""
            , textValue = t
            }
