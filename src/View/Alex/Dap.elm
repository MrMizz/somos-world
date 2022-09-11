module View.Alex.Dap exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class, href, target)
import Msg.Msg exposing (Msg)


body : Html Msg
body =
    Html.div
        [ class "container"
        ]
        [ Html.a
            [ class "has-sky-blue-text"
            , href "https://docs.google.com/presentation/d/1pAt8oMtQpK3nO45iCbyo0SoC9I40EpmszKq46q5lufQ/edit?usp=sharing"
            , target "_blank"
            ]
            [ Html.text "slide-deck"
            ]
        ]
