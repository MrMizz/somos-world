module View.Links.Links exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, href, style, target)
import Msg.Msg exposing (Msg)
import View.Hero


view : Html Msg
view =
    View.Hero.view body


body : Html Msg
body =
    Html.div
        [ class "container has-text-centered has-font-1 has-border-2"
        ]
        [ Html.div
            [ style "padding-bottom" "50px"
            ]
            [ Html.a
                [ href "https://open.spotify.com/artist/7taoh5iJntcYRipZKu4yAp?si=vuSsT_g4S3mKWeFeY7KZiw"
                , target "_blank"
                ]
                [ Html.span
                    [ class "icon-text"
                    ]
                    [ Html.span
                        []
                        [ Html.text "SPOTIFY_"
                        ]
                    , Html.span
                        [ class "icon"
                        ]
                        [ Html.i
                            [ class "fab fa-sm fa-spotify"
                            ]
                            []
                        ]
                    ]
                ]
            ]
        , Html.div
            [ style "padding-bottom" "50px"
            ]
            [ Html.a
                [ href "https://music.apple.com/us/artist/somos/1592219045"
                , target "_blank"
                ]
                [ Html.span
                    [ class "icon-text"
                    ]
                    [ Html.span
                        []
                        [ Html.text "APPLE_MUSIC_"
                        ]
                    , Html.span
                        [ class "icon"
                        ]
                        [ Html.i
                            [ class "fab fa-sm fa-itunes"
                            ]
                            []
                        ]
                    ]
                ]
            ]
        , Html.div
            [ style "padding-bottom" "50px"
            ]
            [ Html.a
                [ href "https://www.youtube.com/channel/UCaAHeEOtcuOP_s9K8YKgTDw"
                , target "_blank"
                ]
                [ Html.span
                    [ class "icon-text"
                    ]
                    [ Html.span
                        []
                        [ Html.text "YOUTUBE_"
                        ]
                    , Html.span
                        [ class "icon"
                        ]
                        [ Html.i
                            [ class "fab fa-sm fa-youtube"
                            ]
                            []
                        ]
                    ]
                ]
            ]
        ]