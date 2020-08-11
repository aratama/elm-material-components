module Main exposing (..)

import Browser
import Html exposing (Html, div, h1, h2, header, img, span, text)
import Html.Attributes exposing (checked, class, src, type_, value)
import Html.Events exposing (onCheck, onClick, onInput)
import Material exposing (button, checkbox, list, listItem, textfield)
import Material.Attributes exposing (Slot(..), graphic, icon, label, raised, slot, twoline)



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
    div [ class "content" ]
        [ header [] [ h1 [] [ text "material-components-web-components" ] ]
        , h2 [] [ text "Button" ]
        , button [ icon "code", raised, label "Hello", onClick Click ] []
        , h2 [] [ text "Textfield" ]
        , div [] [ textfield [ value model.textFieldValue, onInput Change, label "label" ] [] ]
        , div [] [ textfield [ type_ "search", value model.textFieldValue, onInput Change ] [] ]
        , h2 [] [ text "Checkbox" ]
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
