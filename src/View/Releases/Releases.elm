module View.Releases.Releases exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, href, target)
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
        [ Html.div
            []
            [ Html.h1
                [ class "has-space-bottom-1"
                ]
                [ Html.text "CDMX_EP / 2021"
                ]
            , Html.h2
                []
                [ Html.text "STREAMING"
                ]
            , Html.p
                [ class "has-font-1 has-opacity has-space-bottom-1"
                ]
                [ Html.text "SELECT PLATFORM"
                ]
            , Html.div
                [ class "field is-grouped"
                ]
                [ link
                    { title = "SPOTIFY_"
                    , url = "https://open.spotify.com/album/4CHnYuYVVExMpsLqfRSekQ?si=k1gNFn77QHSWJh0Vg9kaLA"
                    }
                , link
                    { title = "APPLE_MUSIC_"
                    , url = "https://music.apple.com/us/album/day-02-feat-cassowary-marv-ali-single/1592228064"
                    }
                , link
                    { title = "YOUTUBE_"
                    , url = "https://www.youtube.com/playlist?list=PLRe_JtAR_iVWIXOmHEMxZh6AZt_4cGDvV"
                    }
                ]
            ]
        ]


type alias Args =
    { title: String
    , url: String
    }


link: Args -> Html Msg
link args =
    Html.p
        [ class "control"
        ]
        [ Html.a
            [ href args.url
            , target "_blank"
            ]
            [ Html.button
                [ class "is-button-1"
                ]
                [ Html.text args.title
                ]
            ]
        ]
