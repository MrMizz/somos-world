module View.About.About exposing (view)

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
        [ class "container"
        ]
        [ Html.p
            [ class "has-font-1"
            ]
            [ Html.span
                []
                [ Html.text "SOMOS *"
                ]
            ]
        , Html.p
            [ class "has-font-1 has-opacity"
            ]
            [ Html.span
                []
                [ Html.text "[we are] [anything]"
                ]
            ]
        , Html.p
            [ class "has-font-1 has-opacity has-space-bottom-2"
            ]
            [ Html.span
                []
                [ Html.text "[we are] "
                ]
            , Html.a
                [ class "has-sky-blue-text"
                , href "https://en.wikipedia.org/wiki/Wildcard_character"
                , target "_blank"
                ]
                [ Html.text " [wildcard]"
                ]
            ]
        , Html.p
            [ class "has-font-1 has-opacity"
            ]
            [ Html.div
                []
                [ Html.text
                    """
                    Collaborative effort of Musicians, Producers, Designers, and Web3 Developers
                    """
                ]
            , Html.div
                []
                [ Html.text
                    """
                    Currently based in São Paulo, Brasil with roots in Los Angeles, CA
                    """
                ]
            ]
        ]
