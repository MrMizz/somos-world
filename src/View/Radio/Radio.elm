module View.Radio.Radio exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class, target)
import Model.Radio as Radio exposing (Episode, Radio(..))
import Model.State as State exposing (State(..))
import Msg.Msg exposing (Msg)


body : Radio -> Html Msg
body radio =
    case radio of
        Top ->
            Html.div
                [ class "container"
                ]
                [ Html.div
                    [ class "has-border-2"
                    ]
                    (List.map
                        top
                        Radio.episodes
                    )
                ]

        Selected episode ->
            Html.div
                [ class "container"
                ]
                [ episode_ episode
                ]


top : Episode -> Html Msg
top arg =
    Html.div
        [ class "pl-3 pb-3"
        ]
        [ Html.a
            [ State.href <| State.Radio <| Radio.Selected arg
            , class "has-sky-blue-text"
            ]
            [ Html.text <| String.join " " [ "episode_", Radio.toString arg ]
            ]
        ]


episode_ : Episode -> Html Msg
episode_ arg =
    let
        links =
            Radio.toLinks arg
    in
    Html.div
        [ class "pb-3"
        ]
        [ Html.div
            [ class "pb-1"
            ]
            [ Html.a
                [ Html.Attributes.href links.soundcloud
                , class "has-sky-blue-text"
                , target "_blank"
                ]
                [ Html.text "Listen on SoundCloud"
                ]
            ]
        , Html.div
            [ class "pb-1"
            ]
            [ Html.a
                [ Html.Attributes.href links.tidal
                , class "has-sky-blue-text"
                , target "_blank"
                ]
                [ Html.text "View all the Track IDs on Tidal"
                ]
            ]
        ]
