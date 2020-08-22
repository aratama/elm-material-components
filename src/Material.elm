module Material exposing
    ( button
    , checkbox
    , circularProgress
    , circularProgressFourColor
    , dialog
    , drawer
    , fab
    , formfield
    , iconButtonToggle
    , iconButton
    , icon
    , linearProgress
    , list
    , listItem
    , menu
    , radio
    , select
    , slider
    , snackbar
    , switch
    , tabBar
    , tab
    , textarea
    , textfield
    , topAppBarFixed
    , topAppBar
    )

{-|

@docs button
@docs checkbox
@docs circularProgress
@docs circularProgressFourColor
@docs dialog
@docs drawer
@docs fab
@docs formfield
@docs iconButtonToggle
@docs iconButton
@docs icon
@docs linearProgress
@docs list
@docs listItem
@docs menu
@docs radio
@docs select
@docs slider
@docs snackbar
@docs switch
@docs tabBar
@docs tab
@docs textarea
@docs textfield
@docs topAppBarFixed
@docs topAppBar

-}

import Html exposing (Attribute, Html, node)


{-| `<mwc-button>`. See [the docs](https://github.com/material-components/material-components-web-components/tree/master/packages/button) for more detail.


# Example Usage

![](https://raw.githack.com/material-components/material-components-web-components/master/packages/button/images/raised.png)
![](https://raw.githack.com/material-components/material-components-web-components/master/packages/button/images/raised_with_icon.png)

    button [ raised, label "standard" ] []

    button [ raised, label "standard", icon "code" ] []

-}
button : List (Attribute msg) -> List (Html msg) -> Html msg
button =
    node "mwc-button"


{-| -}
checkbox : List (Attribute msg) -> List (Html msg) -> Html msg
checkbox =
    node "mwc-checkbox"


{-| -}
circularProgress : List (Attribute msg) -> List (Html msg) -> Html msg
circularProgress =
    node "mwc-circular-progress"


{-| -}
circularProgressFourColor : List (Attribute msg) -> List (Html msg) -> Html msg
circularProgressFourColor =
    node "mwc-circular-progress-four-color"


{-| -}
dialog : List (Attribute msg) -> List (Html msg) -> Html msg
dialog =
    node "mwc-dialog"


{-| -}
drawer : List (Attribute msg) -> List (Html msg) -> Html msg
drawer =
    node "mwc-drawer"


{-| -}
fab : List (Attribute msg) -> List (Html msg) -> Html msg
fab =
    node "mwc-fab"


{-| -}
formfield : List (Attribute msg) -> List (Html msg) -> Html msg
formfield =
    node "mwc-formfield"


{-| -}
iconButtonToggle : List (Attribute msg) -> List (Html msg) -> Html msg
iconButtonToggle =
    node "mwc-icon-button-toggle"


{-| -}
iconButton : List (Attribute msg) -> List (Html msg) -> Html msg
iconButton =
    node "mwc-icon-button"


{-| -}
icon : List (Attribute msg) -> List (Html msg) -> Html msg
icon =
    node "mwc-icon"


{-| -}
linearProgress : List (Attribute msg) -> List (Html msg) -> Html msg
linearProgress =
    node "mwc-linear-progress"


{-| -}
list : List (Attribute msg) -> List (Html msg) -> Html msg
list =
    node "mwc-list"


{-| -}
listItem : List (Attribute msg) -> List (Html msg) -> Html msg
listItem =
    node "mwc-list-item"


{-| -}
menu : List (Attribute msg) -> List (Html msg) -> Html msg
menu =
    node "mwc-menu"


{-| -}
radio : List (Attribute msg) -> List (Html msg) -> Html msg
radio =
    node "mwc-radio"


{-| -}
select : List (Attribute msg) -> List (Html msg) -> Html msg
select =
    node "mwc-select"


{-| -}
slider : List (Attribute msg) -> List (Html msg) -> Html msg
slider =
    node "mwc-slider"


{-| -}
snackbar : List (Attribute msg) -> List (Html msg) -> Html msg
snackbar =
    node "mwc-snackbar"


{-| -}
switch : List (Attribute msg) -> List (Html msg) -> Html msg
switch =
    node "mwc-switch"


{-| -}
tabBar : List (Attribute msg) -> List (Html msg) -> Html msg
tabBar =
    node "mwc-tab-bar"


{-| -}
tab : List (Attribute msg) -> List (Html msg) -> Html msg
tab =
    node "mwc-tab"


{-| -}
textarea : List (Attribute msg) -> List (Html msg) -> Html msg
textarea =
    node "mwc-textarea"


{-| -}
textfield : List (Attribute msg) -> List (Html msg) -> Html msg
textfield =
    node "mwc-textfield"


{-|

    mdc - top - app - bar - fixed

-}
topAppBarFixed : List (Attribute msg) -> List (Html msg) -> Html msg
topAppBarFixed =
    node "mwc-top-app-bar-fixed"


{-| -}
topAppBar : List (Attribute msg) -> List (Html msg) -> Html msg
topAppBar =
    node "mwc-top-app-bar"
