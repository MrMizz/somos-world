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
        [ link
            { title = "SPOTIFY_"
            , url = "https://open.spotify.com/artist/7taoh5iJntcYRipZKu4yAp?si=vuSsT_g4S3mKWeFeY7KZiw"
            , font = "fab fa-sm fa-spotify"
            }
        , link
            { title = "APPLE_MUSIC_"
            , url = "https://music.apple.com/us/artist/somos/1592219045"
            , font = "fab fa-sm fa-itunes"
            }
        , link
            { title = "YOUTUBE_"
            , url = "https://www.youtube.com/channel/UCaAHeEOtcuOP_s9K8YKgTDw"
            , font = "fab fa-sm fa-youtube"
            }
        , link
            { title = "INSTAGRAM_"
            , url = "https://www.instagram.com/somos.ep/"
            , font = "fab fa-sm fa-instagram"
            }
        ]

type alias Args =
    { title: String
    , url: String
    , font: String
    }

link: Args -> Html Msg
link args =
        Html.div
            [ style "padding-bottom" "50px"
            ]
            [ Html.a
                [ href args.url
                , target "_blank"
                ]
                [ Html.span
                    [ class "icon-text"
                    ]
                    [ Html.span
                        []
                        [ Html.text args.title
                        ]
                    , Html.span
                        [ class "icon"
                        ]
                        [ Html.i
                            [ class args.font
                            ]
                            []
                        ]
                    ]
                ]
            ]
