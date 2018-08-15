module Dom.Events exposing (onClick)

import Dom.Attributes as Attr exposing (Attribute)
import Json.Encode as Encode exposing (Value)


onClick : { a | encode : msg -> Value } -> msg -> Attribute
onClick { encode } tagger =
    Attr.createAttribute
        (Encode.object
             [ ( "key", Encode.string "onClick" )
             , ( "value", encode tagger )
             ]
        )
