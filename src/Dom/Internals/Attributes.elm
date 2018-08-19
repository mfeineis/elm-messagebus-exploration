module Dom.Internals.Attributes
    exposing
        ( Attribute
        , createAttribute
        , pullAttributeData
        )

import Json.Encode as Encode exposing (Value)


type Attribute msg
    = Attribute Value


pullAttributeData : Attribute msg -> Value
pullAttributeData (Attribute json) =
    json


createAttribute : Value -> Attribute msg
createAttribute json =
    Attribute json
