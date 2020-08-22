module Material.Attributes exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (attribute)
import Json.Encode as Json
import Material.Graphic exposing (Graphic(..))
import VirtualDom


property : String -> Json.Value -> Attribute msg
property =
    VirtualDom.property


stringProperty : String -> String -> Attribute msg
stringProperty key =
    VirtualDom.property key << Json.string


boolProperty : String -> Bool -> Attribute msg
boolProperty key =
    VirtualDom.property key << Json.bool


floatProperty : String -> Float -> Attribute msg
floatProperty key =
    VirtualDom.property key << Json.float


intProperty : String -> Int -> Attribute msg
intProperty key =
    VirtualDom.property key << Json.int


slot : String -> Attribute msg
slot =
    attribute "icon"



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
    boolProperty "trailingIcon"



-- checkbox


indeterminate : Bool -> Attribute msg
indeterminate =
    boolProperty "indeterminate"


reducedTouchTarget : Bool -> Attribute msg
reducedTouchTarget =
    boolProperty "reducedTouchTarget"



-- circular-progress


progress : Float -> Attribute msg
progress =
    floatProperty "progress"


density : Float -> Attribute msg
density =
    floatProperty "density"


closed : Bool -> Attribute msg
closed =
    boolProperty "closed"



-- circular-progress-four-color


open : Bool -> Attribute msg
open =
    boolProperty "open"


hideActions : Bool -> Attribute msg
hideActions =
    boolProperty "hideActions"


stacked : Bool -> Attribute msg
stacked =
    boolProperty "stacked"


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
--- formfield


alignEnd : Bool -> Attribute msg
alignEnd =
    boolProperty "alignEnd"


spaceBetween : Bool -> Attribute msg
spaceBetween =
    boolProperty "spaceBetween"


nowrap : Bool -> Attribute msg
nowrap =
    boolProperty "nowrap"



-- icon-button-toggle


on : Bool -> Attribute msg
on =
    boolProperty "on"


onIcon : String -> Attribute msg
onIcon =
    stringProperty "onIcon"


offIcon : String -> Attribute msg
offIcon =
    stringProperty "offIcon"


disabled : Bool -> Attribute msg
disabled =
    boolProperty "disabled"



-- icon-button
-- icon
-- linear-progress


buffer : Float -> Attribute msg
buffer =
    attribute "buffer" << String.fromFloat


reverse : Bool -> Attribute msg
reverse =
    boolProperty "reverse"



-- list


activatable : Bool -> Attribute msg
activatable =
    boolProperty "activatable"


rootTabbable : Bool -> Attribute msg
rootTabbable =
    boolProperty "rootTabbable"


multi : Bool -> Attribute msg
multi =
    boolProperty "multi"


wrapFocus : Bool -> Attribute msg
wrapFocus =
    boolProperty "wrapFocus"


itemRoles : String -> Attribute msg
itemRoles =
    stringProperty "itemRoles"


innerRole : String -> Attribute msg
innerRole =
    stringProperty "innerRole"


noninteractive : Bool -> Attribute msg
noninteractive =
    boolProperty "noninteractive"



-- list-item


group : String -> Attribute msg
group =
    stringProperty "group"


tabIndex : Int -> Attribute msg
tabIndex =
    intProperty "tabIndex"


twoline : Attribute msg
twoline =
    attribute "twoline" ""


activated : Bool -> Attribute msg
activated =
    boolProperty "activated"


graphic : Graphic -> Attribute msg
graphic (Graphic graph) =
    attribute "graphic" graph


multipleGraphics : Bool -> Attribute msg
multipleGraphics =
    boolProperty "multipleGraphics"


hasMeta : Bool -> Attribute msg
hasMeta =
    boolProperty "hasMeta"


selected : Bool -> Attribute msg
selected =
    boolProperty "selected"



-- check-list-item


left : Bool -> Attribute msg
left =
    boolProperty "left"



-- radio-list-item
--------------------------------------
-- drawer
-- snackbar


labelText : String -> Attribute msg
labelText =
    attribute "labelText"



-- slider


value : String -> Attribute msg
value =
    attribute "value"


min : String -> Attribute msg
min =
    attribute "min"


max : String -> Attribute msg
max =
    attribute "max"



-- menu


dialogAction : String -> Attribute msg
dialogAction =
    attribute "dialogAction"


{-|

    "TOP_LEFT"|"TOP_RIGHT"|"BOTTOM_LEFT"|"BOTTOM_RIGHT"|"TOP_START"|"TOP_END" |"BOTTOM_START"|"BOTTOM_END"

-}
corner : String -> Attribute msg
corner =
    attribute "corner"


{-|

    "START"|"END"

-}
menuCorner : String -> Attribute msg
menuCorner =
    attribute "menuCorner"


quick : Bool -> Attribute msg
quick =
    boolProperty "quick"


absolute : Bool -> Attribute msg
absolute =
    boolProperty "absolute"


fixed : Bool -> Attribute msg
fixed =
    boolProperty "fixed"


x : Float -> Attribute msg
x =
    floatProperty "x"


y : Float -> Attribute msg
y =
    floatProperty "y"


forceGroupSelection : Bool -> Attribute msg
forceGroupSelection =
    boolProperty "forceGroupSelection"


type DefaultFocusState
    = DefaultFocusState String


none : DefaultFocusState
none =
    DefaultFocusState "none"


listRoot : DefaultFocusState
listRoot =
    DefaultFocusState "LIST_ROOT"


firstItem : DefaultFocusState
firstItem =
    DefaultFocusState "FIRST_ITEM"


lastItem : DefaultFocusState
lastItem =
    DefaultFocusState "LAST_ITEM"


{-|

    "NONE"|"LIST_ROOT"|"FIRST_ITEM"|"LAST_ITEM"

-}
defaultFocus : DefaultFocusState -> Attribute msg
defaultFocus (DefaultFocusState v) =
    attribute "defaultFocus" v


fullwidth : Bool -> Attribute msg
fullwidth =
    boolProperty "fullwidth"



-- radio


global : Bool -> Attribute msg
global =
    boolProperty "global"



-- select


naturalMenuWidth : String -> Attribute msg
naturalMenuWidth =
    attribute "naturalMenuWidth"


helper : String -> Attribute msg
helper =
    attribute "helper"


helperPersistent : Bool -> Attribute msg
helperPersistent =
    boolProperty "helperPersistent"


required : Bool -> Attribute msg
required =
    boolProperty "required"


validationMessage : String -> Attribute msg
validationMessage =
    attribute "validationMessage"


index : Int -> Attribute msg
index =
    intProperty "index"


validateOnInitialRender : Bool -> Attribute msg
validateOnInitialRender =
    boolProperty "validateOnInitialRender"



-- slider


pin : Bool -> Attribute msg
pin =
    boolProperty "pin"


markers : Bool -> Attribute msg
markers =
    boolProperty "markers"



-- snackbar


timeoutMs : Int -> Attribute msg
timeoutMs =
    intProperty "timeoutMs"


closeOnEscape : Bool -> Attribute msg
closeOnEscape =
    boolProperty "closeOnEscape"


leading : Bool -> Attribute msg
leading =
    boolProperty "leading"



-- switch
-- tab-bar


activeIndex : Int -> Attribute msg
activeIndex =
    intProperty "activeIndex"



-- tab


hasImageIcon : Bool -> Attribute msg
hasImageIcon =
    boolProperty "hasImageIcon"


indicatorIcon : String -> Attribute msg
indicatorIcon =
    attribute "indicatorIcon"


isFadingIndicator : Bool -> Attribute msg
isFadingIndicator =
    boolProperty "isFadingIndicator"


minWidth : Bool -> Attribute msg
minWidth =
    boolProperty "minWidth"


isMinWidthIndicator : Bool -> Attribute msg
isMinWidthIndicator =
    boolProperty "isMinWidthIndicator"



-- textarea


rows : Int -> Attribute msg
rows =
    intProperty "rows"


cols : Int -> Attribute msg
cols =
    intProperty "cols"


iconTrailing : String -> Attribute msg
iconTrailing =
    attribute "iconTrailing"


{-|

    'true'|'false'|'external'|'internal';

-}
charCounter : String -> Attribute msg
charCounter v =
    property "iconTrailing" <|
        case v of
            "true" ->
                Json.bool True

            "false" ->
                Json.bool False

            _ ->
                Json.string v


maxLength : Int -> Attribute msg
maxLength =
    intProperty "maxLength"



-- tooltip
-- top-app-bar-fixed


centerTitle : Bool -> Attribute msg
centerTitle =
    boolProperty "centerTitle"


dense_ : Bool -> Attribute msg
dense_ =
    boolProperty "dense"


prominent : Bool -> Attribute msg
prominent =
    boolProperty "prominent"
