port module MyElement exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


type alias Model = Int
type alias Flags = {}


init : Flags -> ( Model, Cmd Msg )
init val =
    ( 0, Cmd.none )


view : Model -> Html Msg
view model =
    section []
        [ button [ onClick Decrement ] [ text "-" ]
        , span [] [ text <| toString model ]
        , button [ onClick Increment ] [ text "+" ]
        ]


type Msg
    = Increment
    | Decrement


port change : Int -> Cmd msg


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Increment ->
            ( model + 1, change (model + 1) )

        Decrement ->
            ( model - 1, change (model - 1) )


main : Program Flags Model Msg
main =
    programWithFlags
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }
