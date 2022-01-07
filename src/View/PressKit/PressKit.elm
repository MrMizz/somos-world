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
        [ class "container has-border-2"
        ]
        [ Html.h2
            [ class "has-border-1 mb-2"
            ]
            [ Html.text "CDMX EP"
            ]
        , Html.div
            [ class "mb-2"
            ]
            [ Html.a
                [ class "has-sky-blue-text"
                , State.href Releases
                ]
                [ Html.text "EP RELEASE"
                ]
            ]
        , Html.div
            [ class "mb-2"
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
            [ class "mb-6"
            ]
            [ Html.a
                [ class "has-sky-blue-text"
                , State.href (Gallery EP01)
                ]
                [ Html.text "GALLERY"
                ]
            ]
        , Html.h2
            [ class "has-border-1 mb-2"
            ]
            [ Html.text "SP LP"
            ]
        , Html.div
            [ class "mb-2"
            ]
            [ Html.a
                [ class "has-sky-blue-text"
                , State.href (Roadmap Music)
                ]
                [ Html.text "WORK IN PROGRESS . . . "
                ]
            ]
        ]
