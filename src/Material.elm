module Material exposing (..)

import Html exposing (Attribute, Html, node)


button : List (Attribute msg) -> List (Html msg) -> Html msg
button =
    node "mwc-button"


checkbox : List (Attribute msg) -> List (Html msg) -> Html msg
checkbox =
    node "mwc-checkbox"


circularProgress : List (Attribute msg) -> List (Html msg) -> Html msg
circularProgress =
    node "mwc-circular-progress"


circularProgressFourColor : List (Attribute msg) -> List (Html msg) -> Html msg
circularProgressFourColor =
    node "mwc-circular-progress-four-color"


dialog : List (Attribute msg) -> List (Html msg) -> Html msg
dialog =
    node "mwc-dialog"


drawer : List (Attribute msg) -> List (Html msg) -> Html msg
drawer =
    node "mwc-drawer"


fab : List (Attribute msg) -> List (Html msg) -> Html msg
fab =
    node "mwc-fab"


formfield : List (Attribute msg) -> List (Html msg) -> Html msg
formfield =
    node "mwc-formfield"


iconButtonToggle : List (Attribute msg) -> List (Html msg) -> Html msg
iconButtonToggle =
    node "mwc-icon-button-toggle"


iconButton : List (Attribute msg) -> List (Html msg) -> Html msg
iconButton =
    node "mwc-icon-button"


icon : List (Attribute msg) -> List (Html msg) -> Html msg
icon =
    node "mwc-icon"


linearProgress : List (Attribute msg) -> List (Html msg) -> Html msg
linearProgress =
    node "mwc-linear-progress"


list : List (Attribute msg) -> List (Html msg) -> Html msg
list =
    node "mwc-list"


listItem : List (Attribute msg) -> List (Html msg) -> Html msg
listItem =
    node "mwc-list-item"


menu : List (Attribute msg) -> List (Html msg) -> Html msg
menu =
    node "mwc-menu"


radio : List (Attribute msg) -> List (Html msg) -> Html msg
radio =
    node "mwc-radio"


select : List (Attribute msg) -> List (Html msg) -> Html msg
select =
    node "mwc-select"


slider : List (Attribute msg) -> List (Html msg) -> Html msg
slider =
    node "mwc-slider"


snackbar : List (Attribute msg) -> List (Html msg) -> Html msg
snackbar =
    node "mwc-snackbar"


switch : List (Attribute msg) -> List (Html msg) -> Html msg
switch =
    node "mwc-switch"


tabBar : List (Attribute msg) -> List (Html msg) -> Html msg
tabBar =
    node "mwc-tab-bar"


tab : List (Attribute msg) -> List (Html msg) -> Html msg
tab =
    node "mwc-tab"


textarea : List (Attribute msg) -> List (Html msg) -> Html msg
textarea =
    node "mwc-textarea"


textfield : List (Attribute msg) -> List (Html msg) -> Html msg
textfield =
    node "mwc-textfield"


topAppBarFixed : List (Attribute msg) -> List (Html msg) -> Html msg
topAppBarFixed =
    node "mwc-top-app-bar-fixed"


topAppBar : List (Attribute msg) -> List (Html msg) -> Html msg
topAppBar =
    node "mwc-top-app-bar"
