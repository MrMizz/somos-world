module View.Description.EP01 exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.Project as Project
import Model.State as State
import Msg.Msg exposing (Msg)


body : Html Msg
body =
    Html.div
        [ class "container has-font-1 has-border-3 pt-2 pb-6 px-3"
        ]
        [ Html.p
            []
            [ Html.div
                [ class "has-border-1"
                ]
                [ Html.a
                    [ class "has-sky-blue-text is-family-secondary"
                    , State.href <| State.Releases Project.EP01
                    ]
                    [ Html.text "CDMX EP"
                    ]
                ]
            , Html.div
                [ class "mt-3 has-opacity"
                ]
                [ Html.text
                    """
                    Recorded in 3 days in Mexico City
                    """
                ]
            , Html.div
                [ class "mt-3 has-opacity"
                ]
                [ Html.text
                    """
                    All composition & production was done "on the spot"
                    """
                ]
            , Html.div
                [ class "mt-3 has-opacity"
                ]
                [ Html.text
                    """
                    What became from that approach is an honest sound
                    """
                ]
            ]
        ]
