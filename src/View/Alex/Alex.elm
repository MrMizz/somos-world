module View.Alex.Alex exposing (body)

import Html exposing (Html)
import Msg.Msg exposing (Msg)


body : Html Msg
body =
    Html.div
        []
        [ Html.text "alex"
        ]
