module Material.Attributes exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (attribute)


bool : Bool -> String
bool v =
    if v then
        "true"

    else
        "false"



-- button


icon : String -> Attribute msg
icon =
    attribute "icon"


label : String -> Attribute msg
label =
    attribute "label"


raised : Attribute msg
raised =
    attribute "raised" ""


unelevated : Attribute msg
unelevated =
    attribute "unelevated" ""


outlined : Attribute msg
outlined =
    attribute "outlined" ""


dense : Attribute msg
dense =
    attribute "dense" ""


trailingIcon : Bool -> Attribute msg
trailingIcon =
    attribute "trailingIcon" << bool



-- checkbox


indeterminate : Bool -> Attribute msg
indeterminate =
    attribute "indeterminate" << bool


reducedTouchTarget : Bool -> Attribute msg
reducedTouchTarget =
    attribute "reducedTouchTarget" << bool



-- circular-progress


progress : Float -> Attribute msg
progress =
    attribute "progress" << String.fromFloat


density : Float -> Attribute msg
density =
    attribute "density" << String.fromFloat


closed : Bool -> Attribute msg
closed =
    attribute "closed" << bool



-- circular-progress-four-color


open : Bool -> Attribute msg
open v =
    if v then
        attribute "open" ""

    else
        attribute "data-closed" ""


hideActions : Bool -> Attribute msg
hideActions =
    attribute "hideActions" << bool


stacked : Bool -> Attribute msg
stacked =
    attribute "stacked" << bool


heading : String -> Attribute msg
heading =
    attribute "heading"


scrimClickAction : String -> Attribute msg
scrimClickAction =
    attribute "scrimClickAction"


escapeKeyAction : String -> Attribute msg
escapeKeyAction =
    attribute "escapeKeyAction"


defaultAction : String -> Attribute msg
defaultAction =
    attribute "defaultAction"


actionAttribute : String -> Attribute msg
actionAttribute =
    attribute "actionAttribute"


initialFocusAttribute : String -> Attribute msg
initialFocusAttribute =
    attribute "initialFocusAttribute"



-- drawer


hasHeader : Attribute msg
hasHeader =
    attribute "hasHeader" ""



-- fab
---


twoline : Attribute msg
twoline =
    attribute "twoline" ""


graphic : String -> Attribute msg
graphic =
    attribute "graphic"



-- drawer
