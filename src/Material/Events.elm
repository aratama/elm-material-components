module Material.Events exposing (..)

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
