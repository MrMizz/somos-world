module View.Roadmap.Music exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Model.State as State exposing (State(..))
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
                    [ { body = Html.text "MUSIC VIDEO 02" }
                    ]
                , doing =
                    [ { body = Html.text "MUSIC VIDEO 01" }
                    ]
                , done =
                    [ { body =
                            Html.a
                                [ class "has-sky-blue-text"
                                , State.href Releases
                                ]
                                [ Html.text "RELEASE"
                                ]
                      }
                    ]
                }
            ]
        , Html.div
            [ class "pb-6"
            ]
            [ Generic.view
                { title = "SP LP"
                , todo =
                    [ { body = Html.text "POST-PRODUCTION" }
                    , { body = Html.text "MIX" }
                    , { body = Html.text "MASTER" }
                    ]
                , doing =
                    []
                , done =
                    [ { body = Html.text "COMPOSITION" }
                    , { body = Html.text "PRODUCTION" }
                    , { body = Html.text "RECORDING" }
                    ]
                }
            ]
        , Html.div
            []
            [ Generic.view
                { title = "CASA BOLA"
                , todo =
                    [ { body = Html.text "MASTER" }
                    , { body = Html.text "MUSIC VIDEO 01" }
                    , { body = Html.text "MUSIC VIDEO 02" }
                    ]
                , doing =
                    [ { body = Html.text "MIX" }
                    ]
                , done =
                    [ { body = Html.text "PARTY" }
                    , { body = Html.text "RECORDING" }
                    ]
                }
            ]
        ]
