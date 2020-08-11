module Material.Attributes exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (attribute)


bool : Bool -> String
bool v =
    if v then
        "true"

    else
        "false"



-- slot


type Slot
    = Slot String


slot : Slot -> Attribute msg
slot (Slot name) =
    attribute "slot" name



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
-- dialog


{-|

    A focusable and clickable target. Typically a button such as <mwc-button>. Placed on the bottom right of the dialog (LTR) and above the secondary action when stacked. Automatically clicked when Enter key is pressed in the dialog.

-}
primaryAction : Slot
primaryAction =
    Slot "primaryAction"


{-|

    A focusable and clickable target. Typically a button such as <mwc-button>. Placed immediately to the left of the primaryAction (LTR) or below when stacked.

-}
secondaryAction : Slot
secondaryAction =
    Slot "secondaryAction"


open : Bool -> Attribute msg
open =
    attribute "open" << bool


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


{-| Header title to display in the drawer when hasHeader is true.
-}
title : Slot
title =
    Slot "title"


{-| Header subtitle to display in the drawer when hasHeader is true.
-}
subtitle : Slot
subtitle =
    Slot "subtitle"


{-| Additional header elements to display in the drawer.
-}
header : Slot
header =
    Slot "header"


{-| Elements to display in the "app content" to the right of, or under, the drawer.
-}
appContent : Slot
appContent =
    Slot "appContent"


hasHeader : Bool -> Attribute msg
hasHeader =
    attribute "hasHeader" << bool
