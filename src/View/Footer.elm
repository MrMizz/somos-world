module View.Footer exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, href, target)
import Msg.Msg exposing (Msg)


view : Html Msg
view =
    Html.footer
        [ class "level has-right"
        ]
        [ Html.div
            [ class "level-item"
            ]
            [ Html.a
                [ href "https://www.instagram.com/somos.ep/"
                , target "_blank"
                ]
                [ Html.span
                    [ class "icon is-large"
                    ]
                    [ Html.i
                        [ class "fab fa-lg fa-instagram"
                        ]
                        []
                    ]
                ]
            ]
        , Html.div
            [ class "level-item"
            ]
            [ Html.a
                [ href "https://github.com/MrMizz/somos-world"
                , target "_blank"
                ]
                [ Html.span
                    [ class "icon is-large"
                    ]
                    [ Html.i
                        [ class "fab fa-lg fa-github"
                        ]
                        []
                    ]
                ]
            ]
        , Html.div
            [ class "level-item"
            ]
            [ Html.a
                [ class "icon is-large"
                , href "mailto:bigtimetapin@gmail.com"
                , target "_blank"
                ]
                [ Html.i
                    [ class "far fa-lg fa-envelope"
                    ]
                    []
                ]
            ]
        ]
