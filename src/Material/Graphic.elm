module Material.Graphic exposing
    ( Graphic(..)
    , avatar
    , control
    , icon
    , large
    , medium
    )


type Graphic
    = Graphic String


avatar : Graphic
avatar =
    Graphic "avatar"


icon : Graphic
icon =
    Graphic "icon"


medium : Graphic
medium =
    Graphic "medium"


large : Graphic
large =
    Graphic "large"


control : Graphic
control =
    Graphic "control"
