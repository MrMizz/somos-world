module View.PressKit.PressKit exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class, href, target)
import Model.Lob exposing (Lob(..))
import Model.Project exposing (Project(..))
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
                [ class "is-family-secondary mb-3 ml-2"
                ]
                [ Html.text "Press Kit"
                ]
            , ep01
            , lp01
            ]
        ]


ep01 =
    Html.div
        [ class "has-border-3 pt-2 pb-6 mb-3"
        ]
        [ Html.h3
            [ class "has-border-1 mb-2 mx-2"
            ]
            [ Html.text "CDMX EP"
            ]
        , Html.div
            [ class "mb-2 mx-2"
            ]
            [ Html.a
                [ class "has-sky-blue-text"
                , href "https://youtu.be/zAT2mIWgs00"
                , target "_blank"
                ]
                [ Html.text "MUSIC VIDEO 01"
                ]
            ]
        , Html.div
            [ class "mb-2 mx-2"
            ]
            [ Html.a
                [ class "has-sky-blue-text"
                , href "https://youtu.be/N1TrMoQuKqU"
                , target "_blank"
                ]
                [ Html.text "MUSIC VIDEO 02"
                ]
            ]
        , Html.div
            [ class "mb-2 mx-2"
            ]
            [ Html.a
                [ class "has-sky-blue-text"
                , State.href (Gallery EP01)
                ]
                [ Html.text "GALLERY"
                ]
            ]
        ]


lp01 =
    Html.div
        [ class "has-border-3 pt-2 pb-6 mb-3"
        ]
        [ Html.h3
            [ class "has-border-1 mb-2 mx-2"
            ]
            [ Html.text "SP LP"
            ]
        , Html.div
            [ class "mb-2 mx-2"
            ]
            [ Html.a
                [ class "has-sky-blue-text"
                , State.href (Roadmap Music)
                ]
                [ Html.text "WORK IN PROGRESS . . . "
                ]
            ]
        ]
