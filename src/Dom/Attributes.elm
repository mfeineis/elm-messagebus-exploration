module Dom.Attributes exposing (Attribute, charset, createAttribute, pullAttributeData)

import Json.Encode as Encode exposing (Value)


type Attribute msg
    = Attribute Value


pullAttributeData : Attribute msg -> Value
pullAttributeData (Attribute json) =
    json


createAttribute : Value -> Attribute msg
createAttribute json =
    Attribute json


charset : String -> Attribute msg
charset value =
    Attribute <|
        Encode.object
            [ ( "key", Encode.string "charset" )
            , ( "value", Encode.string value )
            ]
