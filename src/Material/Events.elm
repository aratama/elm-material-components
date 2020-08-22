module Material.Events exposing
    ( onAction
    , onChangeWithIndeterminate
    , onClosed
    , onDrawerClosed
    , onDrawerOpend
    , onIconButtonToggleChange
    , onInput
    , onOpend
    , onRequestSelected
    , onSelected
    , onSnackbarClosed
    , onSnackbarClosing
    , onSnackbarOpend
    , onSnackbarOpening
    , onTabBarActivated
    , onTabInteracted
    , onTopAppBarNav
    )

import Html exposing (Attribute)
import Html.Events exposing (on)
import Json.Decode as Json



-- checkbox


onChangeWithIndeterminate : (Bool -> Bool -> msg) -> Attribute msg
onChangeWithIndeterminate tagger =
    on "change" <|
        Json.map2 tagger
            (Json.at [ "target", "checked" ] Json.bool)
            (Json.at [ "target", "indeterminate" ] Json.bool)



-- drawer


onOpend : msg -> Attribute msg
onOpend =
    on "opened" << Json.succeed


onClosed : msg -> Attribute msg
onClosed =
    on "closed" << Json.succeed


onDrawerOpend : msg -> Attribute msg
onDrawerOpend =
    on "MDCDrawer:opened" << Json.succeed


onDrawerClosed : msg -> Attribute msg
onDrawerClosed =
    on "MDCDrawer:closed" << Json.succeed



-- slider


onInput : (Float -> msg) -> Attribute msg
onInput tagger =
    on "input" (Json.map tagger targetValue)


targetValue : Json.Decoder Float
targetValue =
    Json.at [ "target", "value" ] Json.float



-- icon-button-toggle


onIconButtonToggleChange : msg -> Attribute msg
onIconButtonToggleChange =
    on "MDCIconButtonToggle:change" << Json.succeed



-- list


onAction : (Int -> msg) -> Attribute msg
onAction tagger =
    on "action" (Json.map tagger (Json.at [ "detail", "index" ] Json.int))


onSelected : (Int -> msg) -> Attribute msg
onSelected tagger =
    on "selected" (Json.map tagger (Json.at [ "detail", "index" ] Json.int))



-- list-item


type alias RequestSelectedDetail =
    { selected : Bool
    , source : String
    }


requestSelectedDetailDecoder : Json.Decoder RequestSelectedDetail
requestSelectedDetailDecoder =
    Json.map2 RequestSelectedDetail
        (Json.field "selected" Json.bool)
        (Json.field "source" Json.string)


onRequestSelected : (RequestSelectedDetail -> msg) -> Attribute msg
onRequestSelected tagger =
    on "request-selected" (Json.map tagger (Json.at [ "detail" ] requestSelectedDetailDecoder))



-- menu
-- radio
-- snackbar


onSnackbarOpening : msg -> Attribute msg
onSnackbarOpening tagger =
    on "MDCSnackbar:opening" (Json.succeed tagger)


onSnackbarOpend : msg -> Attribute msg
onSnackbarOpend tagger =
    on "MDCSnackbar:opened" (Json.succeed tagger)


type alias SnackbarDetail =
    { reason : Maybe String }


snackbarDetailDecoder : Json.Decoder SnackbarDetail
snackbarDetailDecoder =
    Json.map SnackbarDetail
        (Json.field "reason" (Json.maybe Json.string))


onSnackbarClosing : (SnackbarDetail -> msg) -> Attribute msg
onSnackbarClosing tagger =
    on "MDCSnackbar:closing" (Json.map tagger (Json.at [ "detail" ] snackbarDetailDecoder))


onSnackbarClosed : (SnackbarDetail -> msg) -> Attribute msg
onSnackbarClosed tagger =
    on "MDCSnackbar:closed" (Json.map tagger (Json.at [ "detail" ] snackbarDetailDecoder))



-- switch
--tab-bar


type alias TabBarDetail =
    { index : Int }


tabBarDetailDecoder : Json.Decoder TabBarDetail
tabBarDetailDecoder =
    Json.map TabBarDetail
        (Json.field "index" Json.int)


onTabBarActivated : (TabBarDetail -> msg) -> Attribute msg
onTabBarActivated tagger =
    on "MDCTabBar:activated" (Json.map tagger (Json.at [ "detail" ] tabBarDetailDecoder))



-- tab


type alias TabDetail =
    { tabId : String }


tabDetailDecoder : Json.Decoder TabDetail
tabDetailDecoder =
    Json.map TabDetail
        (Json.field "tabId" Json.string)


onTabInteracted : (TabDetail -> msg) -> Attribute msg
onTabInteracted tagger =
    on "MDCTab:interacted" (Json.map tagger (Json.at [ "detail" ] tabDetailDecoder))



-- top-app-bar-fixed


onTopAppBarNav : msg -> Attribute msg
onTopAppBarNav tagger =
    on "MDCTopAppBar:nav" (Json.succeed tagger)
