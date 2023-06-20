module View.About.About exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class, href, target)
import Model.State as State
import Msg.Msg exposing (Msg)


body : Html Msg
body =
    Html.div
        [ class "container"
        ]
        [ Html.div
            [ class "has-border-2 pb-6 px-3"
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
                    [ Html.text " [anything]"
                    ]
                ]
            , Html.p
                [ class "has-font-1 has-opacity has-space-bottom-2"
                ]
                [ Html.div
                    [ class "mb-2"
                    ]
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
            , Html.p
                [ class "has-font-1 has-opacity has-space-bottom-2"
                ]
                [ Html.div
                    [ class "mb-2"
                    ]
                    [ Html.p
                        []
                        [ Html.text
                            """
                            Our debut 
                            """
                        , Html.a
                            [ class "has-sky-blue-text"
                            , State.href State.Links
                            ]
                            [ Html.text "CDMX EP"
                            ]
                        , Html.text
                            """ was recorded in 3 days in Mexico City. All composition & production was done "on the spot". 
                            """
                        ]
                    ]
                , Html.div
                    []
                    [ Html.text
                        """
                        What became from that approach is an honest sound.
                        """
                    ]
                ]
            , Html.p
                [ class "has-font-1 has-opacity"
                ]
                [ Html.div
                    [ class "mb-2"
                    ]
                    [ Html.p
                        []
                        [ Html.div
                            [ class "mb-2"
                            ]
                            [ Html.text
                                """Following the EP we packed our bags for São Paulo where we recorded a full length album. Again, mostly written & produced in the studio with no demos. 
                            """
                            ]
                        , Html.div
                            [ class "mb-2"
                            ]
                            [ Html.text
                                """Lots of synths & vintage gear was involved. Inspired by the 80s with a healthy dose of Brasil's samba sound.
                            """
                            ]
                        , Html.div
                            []
                            [ Html.text
                                """The 
                            """
                            , Html.a
                                [ class "has-sky-blue-text"
                                , State.href State.Links
                                ]
                                [ Html.text "São Paulo LP"
                                ]
                            , Html.text
                                """ is available now for streaming.
                        """
                            ]
                        ]
                    ]
                ]
            ]
        ]
