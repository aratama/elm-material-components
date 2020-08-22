module Material.Slots exposing
    ( Slot(..)
    , action
    , appContent
    , dismiss
    , graphic
    , header
    , icon
    , meta
    , navigationIcon
    , offIcon
    , onIcon
    , primaryAction
    , secondary
    , secondaryAction
    , slot
    , subtitle
    , title
    )

import Html exposing (Attribute)
import Html.Attributes exposing (attribute)


type Slot
    = Slot String


slot : Slot -> Attribute msg
slot (Slot name) =
    attribute "slot" name



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



-- circular-progress-four-color
-- dialog


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



-- fab


icon : Slot
icon =
    Slot "icon"


navigationIcon : Slot
navigationIcon =
    Slot "navigationIcon"



-- icon-button-toggle


onIcon : Slot
onIcon =
    Slot "onIcon"


offIcon : Slot
offIcon =
    Slot "offIcon"



-- list


graphic : Slot
graphic =
    Slot "graphic"


meta : Slot
meta =
    Slot "meta"


secondary : Slot
secondary =
    Slot "secondary"



-- slider


action : Slot
action =
    Slot "action"


dismiss : Slot
dismiss =
    Slot "dismiss"
