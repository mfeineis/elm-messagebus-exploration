port module Main exposing (main)

import Dom exposing (CmdDriver, DomNode, Renderable)
import Dom.Events
import Json.Decode as Decode exposing (Decoder, Value)
import Json.Encode as Encode


port render : Renderable -> Cmd msg


port gateway : (Value -> msg) -> Sub msg


driver : CmdDriver Msg
driver =
    let
        decode =
            Decode.field "cmd" Decode.string
                |> Decode.andThen decodeHelper

        decodeHelper cmd =
            case cmd of
                "INCREMENT" ->
                    Decode.succeed Increment

                _ ->
                    Decode.succeed (Unknown cmd)

        encode cmd =
            case cmd of
                Increment ->
                    Encode.object
                        [ ( "cmd", Encode.string "INCREMENT" )
                        ]

                Unknown _ ->
                    Encode.null
    in
    { decode = decode
    , encode = encode
    }


main : Program () Model Msg
main =
    Platform.worker
        { init = init
        , subscriptions = subscriptions driver
        , update = update
        }


subscriptions : { a | decode : Decoder Msg } -> Model -> Sub Msg
subscriptions { decode } _ =
    let
        interpret json =
            case Decode.decodeValue decode json of
                Ok msg ->
                    msg

                Err _ ->
                    Unknown "Decoding went very, very wrong!"
    in
    gateway interpret


init : () -> ( Model, Cmd msg )
init _ =
    ( { counter = 0 }, Cmd.none )


type alias Model =
    { counter : Int
    }


type Msg
    = Increment
    | Unknown String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg ({ counter } as model) =
    case msg of
        Increment ->
            let
                updated =
                    { model | counter = counter + 1 }
            in
            ( updated, mightRender updated )

        Unknown ctx ->
            ( model, Cmd.none )


mightRender : Model -> Cmd Msg
mightRender model =
    render (Dom.pack (view model))


view : Model -> Dom.Document
view { counter } =
    { title = "Custom Title"
    , body =
        [ Dom.div []
            [ Dom.button
                [ Dom.Events.onClick driver Increment ]
                [ Dom.text "+" ]
            , Dom.text (String.fromInt counter)
            ]
        ]
    }
