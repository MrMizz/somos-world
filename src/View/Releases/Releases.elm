module View.Releases.Releases exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class, href, target)
import Model.Project exposing (Project(..))
import Model.State as State exposing (State(..))
import Msg.Msg exposing (Msg)


body : Project -> Html Msg
body project =
    Html.div
        [ class "container has-font-1"
        ]
        [ Html.div
            [ class "has-border-2 pb-6 px-3"
            ]
            [ Html.h2
                [ class "is-family-secondary mb-3 ml-2"
                ]
                [ Html.text "Releases"
                ]
            , ep01
            ]
        ]


ep01 =
    Html.div
        [ class "has-border-3 pt-2 pb-6 px-3"
        ]
        [ Html.h3
            [ class "has-border-1 mb-4"
            ]
            [ Html.text "CDMX_EP / 2021"
            ]
        , Html.h2
            []
            [ Html.text "PURCHASE"
            ]
        , Html.p
            [ class "has-opacity mb-1"
            ]
            [ Html.text ".WAV FILES FOR DOWNLOAD"
            ]
        , Html.div
            [ class "mb-3"
            ]
            [ link
                { title = "bandcamp_"
                , url = "https://somos-ep.bandcamp.com"
                }
            ]
        , Html.h2
            []
            [ Html.text "STREAMING"
            ]
        , Html.p
            [ class "has-opacity mb-1"
            ]
            [ Html.text "SELECT PLATFORM"
            ]
        , Html.div
            [ class "field is-grouped mb-3"
            ]
            [ link
                { title = "spotify_"
                , url = "https://open.spotify.com/album/5dn6SJAGYm2hZFzwh8m5b6?si=Ls6fQ_UMS7C2zIO3njiAJw"
                }
            , link
                { title = "apple_music_"
                , url = "https://music.apple.com/us/album/cdmx-ep/1596613937"
                }
            , link
                { title = "youtube_"
                , url = "https://www.youtube.com/playlist?list=PLRe_JtAR_iVWIXOmHEMxZh6AZt_4cGDvV"
                }
            ]
        , Html.h2
            []
            [ Html.text "ET CETERA"
            ]
        , Html.p
            [ class "has-opacity mb-1"
            ]
            [ Html.text "PHOTOS, TEXT, ..."
            ]
        , Html.div
            []
            [ Html.a
                [ State.href (Gallery EP01)
                ]
                [ Html.button
                    [ class "is-button-2"
                    ]
                    [ Html.text "📸 📸 📸"
                    ]
                ]
            ]
        , Html.div
            []
            [ Html.a
                [ State.href (Description EP01)
                ]
                [ Html.button
                    [ class "is-button-2"
                    ]
                    [ Html.text "✏️ ✏️ ✏️"
                    ]
                ]
            ]
        ]


type alias Args =
    { title : String
    , url : String
    }


link : Args -> Html Msg
link args =
    Html.p
        [ class "control"
        ]
        [ Html.a
            [ href args.url
            , target "_blank"
            ]
            [ Html.button
                [ class "is-button-1 has-font-1"
                ]
                [ Html.text args.title
                ]
            ]
        ]
