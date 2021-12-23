module View.Roadmap.Music exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Msg.Msg exposing (Msg)
import View.Hero
import View.Roadmap.Generic as Generic


view : Html Msg
view =
    View.Hero.view body


body : Html Msg
body =
    Html.div
        [ class "container"
        ]
        [ Html.div
            [ class "pb-6"
            ]
            [ Generic.view
                { title = "CDMX EP"
                , todo =
                    [ { body = "MUSIC VIDEO 02" }
                    ]
                , doing =
                    [ { body = "MUSIC VIDEO 01" }
                    ]
                , done =
                    [ { body = "RELEASE" }
                    ]
                }
            ]
        , Html.div
            [ class "pb-6"
            ]
            [ Generic.view
                { title = "SP LP"
                , todo =
                    [ { body = "POST-PRODUCTION" }
                    , { body = "MIX" }
                    , { body = "MASTER" }
                    ]
                , doing =
                    []
                , done =
                    [ { body = "COMPOSITION" }
                    , { body = "PRODUCTION" }
                    , { body = "RECORDING" }
                    ]
                }
            ]
        , Html.div
            []
            [ Generic.view
                { title = "CASA BOLA"
                , todo =
                    [ { body = "MASTER" }
                    , { body = "MUSIC VIDEO 01" }
                    , { body = "MUSIC VIDEO 02" }
                    ]
                , doing =
                    [ { body = "MIX" }
                    ]
                , done =
                    [ { body = "PARTY" }
                    , { body = "RECORDING" }
                    ]
                }
            ]
        ]
