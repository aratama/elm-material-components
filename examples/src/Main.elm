module Main exposing (..)

import Browser
import Html exposing (Html, div, h1, h2, header, img, span, text)
import Html.Attributes exposing (attribute, checked, class, disabled, id, max, min, name, src, style, type_, value)
import Html.Events exposing (onCheck, onClick, onInput)
import Material exposing (button, checkbox, circularProgress, circularProgressFourColor, dialog, drawer, fab, formfield, iconButton, linearProgress, list, listItem, menu, radio, select, slider, snackbar, switch, tab, tabBar, textarea, textfield, topAppBar)
import Material.Attributes exposing (dense, dialogAction, graphic, hasHeader, icon, indeterminate, label, labelText, max, open, outlined, raised, slot, twoline, unelevated)
import Material.Events exposing (onClosed, onDrawerClosed)
import Port exposing (showSnackbar)



---- MODEL ----


type alias Model =
    { textFieldValue : String
    , checked : Bool
    , showDialog : Bool
    , drawerOpen : Bool
    , slider : Int
    , menuOpen : Bool
    }


init : ( Model, Cmd Msg )
init =
    ( { textFieldValue = ""
      , checked = False
      , showDialog = False
      , drawerOpen = False
      , slider = 50
      , menuOpen = False
      }
    , Cmd.none
    )



---- UPDATE ----


type Msg
    = Change String
    | Check Bool
    | ShowDialog
    | DialogClosed
    | OpenDrawer
    | OpenMenu
    | DrawerClosed
    | MenuClosed
    | ShowSnackbar String
    | SliderInput Float


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
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

        OpenMenu ->
            ( { model | menuOpen = True }, Cmd.none )

        DrawerClosed ->
            ( { model | drawerOpen = False }, Cmd.none )

        MenuClosed ->
            ( { model | menuOpen = False }, Cmd.none )

        ShowSnackbar selector ->
            ( model, Port.showSnackbar selector )

        SliderInput v ->
            ( { model | slider = floor v }, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    drawer [ type_ "modal", hasHeader, open model.drawerOpen, onDrawerClosed DrawerClosed ]
        [ span [ slot "title" ] [ text "Drawer Title" ]
        , span [ slot "subtitle" ] [ text "subtitle" ]
        , div [] [ text "Drawer Content" ]
        , div [ slot "appContent" ]
            [ topAppBar []
                [ iconButton [ slot "navigationIcon", icon "menu", onClick OpenDrawer ] []
                , div [ slot "title" ] [ text "elm-material-components" ]
                ]
            , div [ class "content" ]
                [ h2 [] [ text "Button / Floating Action Button / Icon Button" ]
                , div [ class "row" ]
                    [ button [ label "Regular" ] []
                    , button [ outlined, label "Outlined" ] []
                    , button [ raised, label "Raised" ] []
                    , button [ unelevated, label "Unelevated" ] []
                    , button [ dense, label "Dense" ] []
                    , button [ raised, disabled True, label "Disabled" ] []
                    ]
                , div [ class "row" ]
                    [ fab [ icon "edit" ] []
                    , iconButton [ icon "code" ] []
                    ]
                , h2 [] [ text "Checkbox / Formfield" ]
                , formfield [ label "Checked" ] [ checkbox [ checked model.checked, onCheck Check ] [] ]
                , h2 [] [ text "Circular Progress / Circular Progress Four Color" ]
                , div [ class "row" ]
                    [ circularProgress [ indeterminate True ] []
                    , circularProgressFourColor [ indeterminate True ] []
                    ]
                , h2 [] [ text "Linear Progress" ]
                , linearProgress [ indeterminate True ] []
                , h2 [] [ text "Dialog / Snackbar / Menu" ]
                , div [ class "row" ]
                    [ button [ raised, label "Show Dialog", onClick ShowDialog ] []
                    , button [ raised, label "Show Snackbar", onClick (ShowSnackbar "#message") ] []
                    , div [ style "position" "relative" ]
                        [ button [ id "button", raised, label "Open Menu", onClick OpenMenu ] []
                        , menu [ id "menu", open model.menuOpen, onClosed MenuClosed ]
                            [ listItem [] [ text "Item 0" ]
                            , listItem [] [ text "Item 1" ]
                            , listItem [] [ text "Item 2" ]
                            , listItem [] [ text "Item 3" ]
                            ]
                        ]
                    , dialog [ open model.showDialog, onClosed DialogClosed ]
                        [ div [] [ text "Discard draft?" ]
                        , button [ slot "primaryAction", dialogAction "discard" ] [ text "Discard" ]
                        , button [ slot "secondaryAction", dialogAction "cancel" ] [ text "Cancel" ]
                        ]
                    , snackbar [ id "message", labelText "Hello from snackbar!" ] []
                    ]
                , h2 [] [ text "Icon" ]
                , Material.icon [] [ text "shopping_cart" ]
                , h2 [] [ text "List" ]
                , list []
                    [ listItem [] [ text "Apple" ]
                    , listItem [] [ text "Grape" ]
                    , listItem [] [ text "Melon" ]
                    ]
                , h2 [] [ text "Radio" ]
                , div [] [ radio [ name "radio-group", value "left" ] [], radio [ name "radio-group", value "left", checked True ] [] ]
                , h2 [] [ text "Select" ]
                , select []
                    [ listItem [] [ text "Apple" ]
                    , listItem [] [ text "Grape" ]
                    , listItem [] [ text "Melon" ]
                    ]
                , h2 [] [ text "Slieder" ]
                , div [ class "row" ]
                    [ slider
                        [ Material.Attributes.min "0"
                        , Material.Attributes.max "100"
                        , Material.Attributes.value <| String.fromInt model.slider
                        , Material.Events.onInput SliderInput
                        ]
                        []
                    , span [] [ text <| String.fromInt model.slider ]
                    ]
                , h2 [] [ text "switch" ]
                , switch [] []
                , h2 [] [ text "Tab" ]
                , tabBar []
                    [ tab [ label "Tab one" ] []
                    , tab [ label "Tab two" ] []
                    , tab [ label "Tab three" ] []
                    ]
                , h2 [] [ text "Textarea / Textfield" ]
                , div [ class "row" ]
                    [ textarea [ label "textarea" ] []
                    , textfield [ value model.textFieldValue, onInput Change, label "textfield" ] []
                    ]
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
