module View.About.About exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class, href, target)
import Msg.Msg exposing (Msg)


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
                [ Html.p
                    []
                    [ Html.text
                        """
                        Collaborative effort of Musicians, Producers, Designers, and
                        """
                    , Html.a
                        [ class "has-sky-blue-text"
                        , href "https://en.wikipedia.org/wiki/Web3"
                        , target "_blank"
                        ]
                        [ Html.text "Web3 "
                        ]
                    , Html.text "Developers"
                    ]
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
