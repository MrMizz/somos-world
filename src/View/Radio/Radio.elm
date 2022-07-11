module View.Radio.Radio exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.Radio as Radio exposing (Episode, Radio(..))
import Msg.Msg exposing (Msg)


body : Radio -> Html Msg
body radio =
    case radio of
        Top ->
            Html.div
                [ class "container"
                ]
                [ Html.text "top"
                ]

        Selected episode ->
            Html.div
                [ class "container"
                ]
                [ Html.text <| Radio.toString episode
                ]
