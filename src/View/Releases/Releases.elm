module View.Releases.Releases exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Msg.Msg exposing (Msg)
import View.Hero


view : Html Msg
view =
    View.Hero.view body


body : Html Msg
body =
    Html.div
        [ class "container"
        ]
        [ Html.div
            [ class "has-text-centered has-font-1"
            ]
            [ Html.text "RELEASES . . . "
            ]
        ]
