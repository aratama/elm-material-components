module Main exposing (..)

import Browser
import Html exposing (Html, div, h1, h2, header, img, span, text)
import Html.Attributes exposing (checked, class, src, type_, value)
import Html.Events exposing (onCheck, onClick, onInput)
import Material exposing (button, checkbox, circularProgress, circularProgressFourColor, dialog, list, listItem, textfield)
import Material.Attributes exposing (graphic, icon, indeterminate, label, open, raised, twoline)
import Material.Events exposing (onClosed)
import Material.Slots exposing (Slot(..), slot)



---- MODEL ----


type alias Model =
    { textFieldValue : String
    , checked : Bool
    , showDialog : Bool
    }


init : ( Model, Cmd Msg )
init =
    ( { textFieldValue = ""
      , checked = False
      , showDialog = False
      }
    , Cmd.none
    )



---- UPDATE ----


type Msg
    = Click
    | Change String
    | Check Bool
    | ShowDialog
    | DialogClosed


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Click ->
            ( model, Cmd.none )

        Change str ->
            ( { model | textFieldValue = str }, Cmd.none )

        Check value ->
            ( { model | checked = value }, Cmd.none )

        ShowDialog ->
            ( { model | showDialog = True }, Cmd.none )

        DialogClosed ->
            ( { model | showDialog = False }, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div [ class "content" ]
        [ header [] [ h1 [] [ text "elm-material-components" ] ]
        , h2 [] [ text "Button" ]
        , button [ label "Hello", onClick Click ] []
        , h2 [] [ text "Textfield" ]
        , div [] [ textfield [ value model.textFieldValue, onInput Change, label "label" ] [] ]
        , div [] [ textfield [ type_ "search", value model.textFieldValue, onInput Change ] [] ]
        , h2 [] [ text "Checkbox" ]
        , checkbox [ checked model.checked, onCheck Check ] []
        , h2 [] [ text "Circular Progress" ]
        , circularProgress [ indeterminate True ] []
        , h2 [] [ text "Circular Progress Four Color" ]
        , circularProgressFourColor [ indeterminate True ] []
        , h2 [] [ text "Dialog" ]
        , dialog [ open model.showDialog, onClosed DialogClosed ] []
        , button [ raised, label "Show Dialog", onClick ShowDialog ] []
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
