module Dom.Attributes exposing (Attribute, attribute)

import Dom.Internals.Attributes as Attr
import Json.Encode as Encode


type alias Attribute msg =
    Attr.Attribute msg


attribute : String -> String -> Attribute msg
attribute key value =
    Attr.createAttribute <|
        Encode.object
            [ ( "key", Encode.string key )
            , ( "value", Encode.string value )
            ]

