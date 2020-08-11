module Material.Events exposing (..)

import Html exposing (Attribute)
import Html.Events exposing (on)
import Json.Decode as Json



-- checkbox


onChangeWithIndeterminate : (Bool -> Bool -> msg) -> Attribute msg
onChangeWithIndeterminate tagger =
    on "change"
        (Json.map2 tagger
            (Json.at [ "target", "checked" ] Json.bool)
            (Json.at [ "target", "indeterminate" ] Json.bool)
        )



-- drawer


onOpend : (Bool -> msg) -> Attribute msg
onOpend tagger =
    on "MDCDrawer:opened" <|
        Json.map tagger <|
            Json.at [ "target", "open" ] Json.bool


onClosed : (Bool -> msg) -> Attribute msg
onClosed tagger =
    on "MDCDrawer:closed" <|
        Json.map tagger <|
            Json.at [ "target", "open" ] Json.bool
