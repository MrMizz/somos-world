module View.Roadmap.Total exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.Lob exposing (Lob(..))
import Model.State as State exposing (State(..))
import Msg.Msg exposing (Msg)


body : Html Msg
body =
    Html.div
        [ class "container has-font-1"
        ]
        [ Html.div
            [ class "has-border-2 pb-6 px-3"
            ]
            [ Html.h2
                [ class "is-family-secondary mb-6 ml-2"
                ]
                [ Html.text "Road Map"
                ]
            , Html.div
                [ class "mb-2"
                ]
                [ Html.a
                    [ State.href (Roadmap Music)
                    ]
                    [ Html.button
                        [ class "is-button-2 has-font-1"
                        ]
                        [ Html.text "MUSIC"
                        ]
                    ]
                ]
            , Html.div
                []
                [ Html.a
                    [ State.href (Roadmap Tech)
                    ]
                    [ Html.button
                        [ class "is-button-2 has-font-1"
                        ]
                        [ Html.text "TECH"
                        ]
                    ]
                ]
            ]
        ]
