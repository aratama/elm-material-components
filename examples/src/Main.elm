module Main exposing (..)

import Browser
import Html exposing (Html, div, h1, h2, header, img, span, text)
import Html.Attributes exposing (checked, class, id, max, min, name, src, type_, value)
import Html.Events exposing (onCheck, onClick, onInput)
import Material exposing (button, checkbox, circularProgress, circularProgressFourColor, dialog, drawer, fab, formfield, iconButton, linearProgress, list, listItem, radio, select, slider, snackbar, switch, tab, tabBar, textarea, textfield, topAppBar)
import Material.Attributes exposing (graphic, hasHeader, icon, indeterminate, label, labelText, open, raised, twoline)
import Material.Events exposing (onClosed, onDrawerClosed)
import Material.Slots exposing (Slot(..), appContent, navigationIcon, slot, subtitle, title)
import Port exposing (showSnackbar)



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
    | ShowSnackbar String


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

        ShowSnackbar selector ->
            ( model, Port.showSnackbar selector )



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
                , div [] [ button [ raised, label "Hello", onClick Click ] [] ]
                , div [] [ iconButton [ icon "code", onClick Click ] [] ]
                , h2 [] [ text "Checkbox / Formfield" ]
                , formfield [ label "Checked" ] [ checkbox [ checked model.checked, onCheck Check ] [] ]
                , h2 [] [ text "Circular Progress" ]
                , circularProgress [ indeterminate True ] []
                , h2 [] [ text "Circular Progress Four Color" ]
                , circularProgressFourColor [ indeterminate True ] []
                , h2 [] [ text "Dialog" ]
                , dialog [ open model.showDialog, onClosed DialogClosed ] []
                , button [ raised, label "Show Dialog", onClick ShowDialog ] []
                , h2 [] [ text "Floating Icon Button (fab)" ]
                , fab [ icon "edit" ] []
                , h2 [] [ text "Icon" ]
                , Material.icon [] [ text "shopping_cart" ]
                , h2 [] [ text "Linear Progress" ]
                , linearProgress [ indeterminate True ] []
                , h2 [] [ text "List" ]
                , list []
                    [ listItem [] [ text "Apple" ]
                    , listItem [] [ text "Grape" ]
                    , listItem [] [ text "Melon" ]
                    ]
                , h2 [] [ text "Menu" ]
                , h2 [] [ text "Radio" ]
                , div [] [ radio [ name "radio-group", value "left" ] [], radio [ name "radio-group", value "left", checked True ] [] ]
                , h2 [] [ text "Select" ]
                , select []
                    [ listItem [] [ text "Apple" ]
                    , listItem [] [ text "Grape" ]
                    , listItem [] [ text "Melon" ]
                    ]
                , h2 [] [ text "Slieder" ]
                , slider [ Html.Attributes.min "0", Html.Attributes.max "100", value "50" ] []
                , h2 [] [ text "snackbar" ]
                , snackbar [ id "message", labelText "Hello from snackbar!" ] []
                , div [] [ button [ raised, label "Show Snackbar", onClick (ShowSnackbar "#message") ] [] ]
                , h2 [] [ text "switch" ]
                , switch [] []
                , h2 [] [ text "tab / tab-bar" ]
                , tabBar []
                    [ tab [ label "Tab one" ] []
                    , tab [ label "Tab two" ] []
                    , tab [ label "Tab three" ] []
                    ]
                , h2 [] [ text "textarea" ]
                , textarea [ label "textarea" ] []
                , h2 [] [ text "Textfield" ]
                , div [] [ textfield [ value model.textFieldValue, onInput Change, label "label" ] [] ]
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
