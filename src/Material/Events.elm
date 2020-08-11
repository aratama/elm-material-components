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


onOpend : msg -> Attribute msg
onOpend msg =
    on "opened" <| Json.succeed msg


onClosed : msg -> Attribute msg
onClosed msg =
    on "closed" <| Json.succeed msg


onDrawerOpend : msg -> Attribute msg
onDrawerOpend msg =
    on "MDCDrawer:opened" <| Json.succeed msg


onDrawerClosed : msg -> Attribute msg
onDrawerClosed msg =
    on "MDCDrawer:closed" <| Json.succeed msg
