module View.Roadmap.Total exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.Lob exposing (Lob(..))
import Model.State as State exposing (State(..))
import Msg.Msg exposing (Msg)


body : Html Msg
body =
    Html.div
        [ class "columns is-mobile is-multiline"
        ]
        [ Html.div
            [ class "column is-12"
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
            [ class "column is-12"
            ]
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
