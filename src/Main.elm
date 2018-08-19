port module Main exposing (main)

--import Dom.Markdown as Markdown

import Dom as Html exposing (Document, Html)
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
                "DECREMENT" ->
                    Decode.succeed Decrement

                "INCREMENT" ->
                    Decode.succeed Increment

                _ ->
                    Decode.succeed (Unknown cmd)

        encode msg =
            case msg of
                Decrement ->
                    Encode.object
                        [ ( "cmd", Encode.string "DECREMENT" )
                        ]

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
    let
        mightRender : Model -> Cmd Msg
        mightRender model =
            render <|
                Dom.Static.render
                    [ Html.node "meta" [ Attr.attribute "charset" "utf-8" ] []
                    ]
                    (view model)
    in
    Platform.worker
        { init =
            \flags ->
                let
                    ( m, cmds ) =
                        init flags
                in
                ( m, Cmd.batch [ cmds, mightRender m ] )
        , subscriptions = subscriptions driver
        , update =
            \msg m1 ->
                let
                    ( m2, cmds ) =
                        update msg m1
                in
                ( m2, Cmd.batch [ cmds, mightRender m2 ] )
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
    Sub.batch
        [ gateway interpret
        ]


init : () -> ( Model, Cmd Msg )
init _ =
    let
        model =
            { counter = 0 }
    in
    ( model, Cmd.none )


type alias Model =
    { counter : Int
    }


type Msg
    = Decrement
    | Increment
    | Unknown String


update : Msg -> Model -> ( Model, Cmd Msg )
update msg ({ counter } as model) =
    case msg of
        Decrement ->
            let
                updated =
                    { model | counter = counter - 1 }
            in
            ( updated, Cmd.none )

        Increment ->
            let
                updated =
                    { model | counter = counter + 1 }
            in
            ( updated, Cmd.none )

        Unknown ctx ->
            ( model, Cmd.none )


view : Model -> Document Msg
view { counter } =
    { title = "Custom Title"
    , body =
        [ Html.div []
            [ Html.button
                [ Dom.Events.onClick driver Decrement ]
                [ Html.text "-" ]
            , Html.text (String.fromInt counter)
            , Html.button
                [ Dom.Events.onClick driver Increment ]
                [ Html.text "+" ]
            ]

        --, Html.div []
        --    [ Markdown.toHtml
        --        "# Hello World!"
        --    ]
        ]
    }
