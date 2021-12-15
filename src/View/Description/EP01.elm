module View.Description.EP01 exposing (view)

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
        [ class "container has-font-1"
        ]
        [ Html.p
            []
            [ Html.div
                [ class "has-space-bottom-2"
                ]
                [ Html.text
                    """
                    CDMX EP was recorded in 3 days in Mexico City.
                    """
                ]
            , Html.div
                [ class "has-space-bottom-2 has-opacity"
                ]
                [ Html.text
                    """
                    All composition & production was done "on the spot".
                    """
                ]
            , Html.div
                [ class "has-opacity"
                ]
                [ Html.text
                    """
                    What became from that approach is an honest sound.
                    """
                ]
            ]
        ]
