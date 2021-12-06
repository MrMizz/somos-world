module View.Gallery.EP01 exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, src)
import Msg.Msg exposing (Msg)
import View.Hero


view : Html Msg
view =
    View.Hero.view body

body: Html Msg
body =
    Html.div
        [ class "columns is-mobile is-multiline"
        ]
        [ column "01"
        , column "02"
        , column "03"
        , column "04"
        , column "05"
        , column "06"
        , column "07"
        , column "08"
        , column "09"
        , column "10"
        , column "11"
        , column "12"
        , column "13"
        , column "14"
        , column "15"
        ]


column: String -> Html Msg
column index =
    Html.div
        [ class "column is-4"
        ]
        [ Html.img
            [ class "is-image-2"
            , src ("images/ep/" ++ index ++ ".jpg")
            ]
            []
        ]