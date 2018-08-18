port module Main exposing (main)

import Dom as Html exposing (Html)
import Dom.Attributes as Attr
import Dom.Events exposing (CmdDriver)
import Dom.Static exposing (Renderable)
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


init : () -> ( Model, Cmd Msg )
init _ =
    let
        model =
            { counter = 0 }
    in
    ( model, mightRender model )


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
            ( model, mightRender model )


mightRender : Model -> Cmd Msg
mightRender model =
    render (Dom.Static.render (view model))


view : Model -> Html.Document Msg
view { counter } =
    { title = "Custom Title"
    , head =
        [ Html.meta [ Attr.charset "utf-8" ] []
        ]
    , body =
        [ Html.div []
            [ Html.button
                [ Dom.Events.onClick driver Increment ]
                [ Html.text "+" ]
            , Html.text (String.fromInt counter)
            ]
        ]
    }
