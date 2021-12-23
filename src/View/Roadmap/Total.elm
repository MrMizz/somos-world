module View.Roadmap.Total exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.Lob exposing (Lob(..))
import Model.State as State exposing (State(..))
import Msg.Msg exposing (Msg)
import View.Hero


view : Html Msg
view =
    View.Hero.view body


body : Html Msg
body =
    Html.div
        [ class "columns is-mobile is-multiline"
        ]
        [ Html.div
            [ class "column is-12"
            ]
            [ Html.a
                [ class "is-button-2"
                , State.href (Roadmap Music)
                ]
                [ Html.text "MUSIC"
                ]
            ]
        , Html.div
            [ class "column is-12"
            ]
            [ Html.a
                [ class "is-button-2"
                , State.href (Roadmap Tech)
                ]
                [ Html.text "TECH"
                ]
            ]
        ]
