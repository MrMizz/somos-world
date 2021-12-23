module View.Roadmap.Tech exposing (view)

import Html exposing (Html)
import Msg.Msg exposing (Msg)
import View.Hero


view : Html Msg
view =
    View.Hero.view body


body : Html Msg
body =
    Html.div
        []
        [ Html.text "TECH"
        ]
