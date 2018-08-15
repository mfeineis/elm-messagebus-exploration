module Dom.Attributes exposing (Attribute, createAttribute, pullAttributeData)

import Json.Encode exposing (Value)


type Attribute
    = Attribute Value


pullAttributeData : Attribute -> Value
pullAttributeData (Attribute json) =
    json


createAttribute : Value -> Attribute
createAttribute json =
    Attribute json
