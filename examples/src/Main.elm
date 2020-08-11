module Main exposing (..)

import Browser
import Html exposing (Html, div, h1, h2, header, img, span, text)
import Html.Attributes exposing (checked, class, src, type_, value)
import Html.Events exposing (onCheck, onClick, onInput)
import Material exposing (button, checkbox, circularProgress, circularProgressFourColor, dialog, drawer, iconButton, list, listItem, textfield, topAppBar)
import Material.Attributes exposing (graphic, hasHeader, icon, indeterminate, label, open, raised, twoline)
import Material.Events exposing (onClosed, onDrawerClosed)
import Material.Slots exposing (Slot(..), appContent, navigationIcon, slot, subtitle, title)



---- MODEL ----


type alias Model =
    { textFieldValue : String
    , checked : Bool
    , showDialog : Bool
    , drawerOpen : Bool
    }


init : ( Model, Cmd Msg )
init =
    ( { textFieldValue = ""
      , checked = False
      , showDialog = False
      , drawerOpen = False
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
    | OpenDrawer
    | DrawerClosed


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

        OpenDrawer ->
            ( { model | drawerOpen = True }, Cmd.none )

        DrawerClosed ->
            ( { model | drawerOpen = False }, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    drawer [ type_ "modal", hasHeader, open model.drawerOpen, onDrawerClosed DrawerClosed ]
        [ span [ slot title ] [ text "Drawer Title" ]
        , span [ slot subtitle ] [ text "subtitle" ]
        , div [] [ text "Drawer Content" ]
        , div [ slot appContent ]
            [ topAppBar []
                [ iconButton [ slot navigationIcon, icon "menu", onClick OpenDrawer ] []
                , div [ slot title ] [ text "elm-material-components" ]
                ]
            , div [ class "content" ]
                [ h2 [] [ text "Button" ]
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
            ]
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
