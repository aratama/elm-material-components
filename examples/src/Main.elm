module Main exposing (..)

import Browser
import Html exposing (Html, div, h1, img, text)
import Html.Attributes exposing (checked, src, type_, value)
import Html.Events exposing (onCheck, onClick, onInput)
import Material exposing (button, checkbox, textfield)
import Material.Attributes exposing (icon, label, raised)



---- MODEL ----


type alias Model =
    { textFieldValue : String
    , checked : Bool
    }


init : ( Model, Cmd Msg )
init =
    ( { textFieldValue = "hoge"
      , checked = False
      }
    , Cmd.none
    )



---- UPDATE ----


type Msg
    = Click
    | Change String
    | Check Bool


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Click ->
            ( model, Cmd.none )

        Change str ->
            ( { model | textFieldValue = str }, Cmd.none )

        Check value ->
            ( { model | checked = value }, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text "material-components-web-components" ]
        , button [ icon "code", raised, label "Hello", onClick Click ] []
        , textfield [ value model.textFieldValue, onInput Change, label "label" ] []
        , textfield [ type_ "search", value model.textFieldValue, onInput Change ] []
        , checkbox [ checked model.checked, onCheck Check ] []
        ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
