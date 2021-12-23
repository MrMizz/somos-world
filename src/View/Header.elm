module View.Header exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, src, width)
import Model.Lob exposing (Lob(..))
import Model.State as State exposing (State(..))
import Msg.Msg exposing (Msg)


view : Html Msg
view =
    Html.nav
        [ class "level is-mobile"
        ]
        [ Html.div
            [ class "level-left has-font-1"
            ]
            [ Html.div
                [ class "level-item"
                ]
                [ Html.div
                    [ class "tabs is-boxed is-small has-border-1"
                    ]
                    [ Html.ul
                        []
                        [ Html.li
                            []
                            [ Html.a
                                [ State.href About
                                ]
                                [ Html.text "ABOUT"
                                ]
                            ]
                        , Html.li
                            []
                            [ Html.a
                                [ State.href Releases
                                ]
                                [ Html.text "RELEASES"
                                ]
                            ]
                        , Html.li
                            []
                            [ Html.a
                                [ State.href Links
                                ]
                                [ Html.text "LINKS"
                                ]
                            ]
                        , Html.li
                            []
                            [ Html.a
                                [ State.href (Roadmap Total)
                                ]
                                [ Html.text "ROADMAP"
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        , Html.div
            [ class "level-right"
            ]
            [ Html.div
                [ class "level-item"
                ]
                [ Html.a
                    [ State.href Links
                    ]
                    [ Html.img
                        [ src "images/logo/02_somos.png"
                        , width 50
                        ]
                        []
                    ]
                ]
            ]
        ]
