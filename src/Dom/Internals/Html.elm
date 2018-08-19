module Dom.Internals.Html exposing (Html, createNode, pullNodeData)

import Json.Encode exposing (Value)


type Html msg
    = Html Value


createNode json =
    Html json


pullNodeData (Html json) =
    json
