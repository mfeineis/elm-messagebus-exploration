module Dom.Events exposing (CmdDriver, onClick)

import Dom.Internals.Attributes as Attr exposing (Attribute)
import Json.Decode as Decode exposing (Decoder)
import Json.Encode as Encode exposing (Value)


type alias CmdDriver msg =
    { decode : Decoder msg
    , encode : msg -> Value
    }


onClick : { a | encode : msg -> Value } -> msg -> Attribute msg
onClick { encode } tagger =
    Attr.createAttribute <|
        Encode.object
            [ ( "key", Encode.string "onClick" )
            , ( "value", encode tagger )
            ]
