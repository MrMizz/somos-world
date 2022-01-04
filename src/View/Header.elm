module View.Header exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, src, width)
import Model.Lob exposing (Lob(..))
import Model.Model exposing (Model)
import Model.State as State exposing (State(..))
import Msg.Msg exposing (Msg)


view : Model -> Html Msg
view model =
    let
        tab_ : Args -> Html Msg
        tab_ =
            tab model
    in
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
                    [ class "tabs is-small has-border-1"
                    ]
                    [ Html.ul
                        []
                        [ tab_
                            { state = About
                            , title = "ABOUT"
                            }
                        , tab_
                            { state = Releases
                            , title = "RELEASES"
                            }
                        , tab_
                            { state = Links
                            , title = "LINKS"
                            }
                        , tab_
                            { state = Roadmap Total
                            , title = "ROADMAP"
                            }
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


type alias Args =
    { state : State
    , title : String
    }


tab : Model -> Args -> Html Msg
tab model args =
    Html.li
        [ class (isActive model args.state)
        ]
        [ Html.a
            [ State.href args.state
            ]
            [ Html.text args.title
            ]
        ]


isActive : Model -> State -> String
isActive model state =
    let
        class_ =
            "is-active-header-tab"
    in
    case model.state of
        Roadmap _ ->
            case state of
                Roadmap _ ->
                    class_

                _ ->
                    ""


        modelState ->
            case modelState == state of
                True ->
                    class_

                False ->
                    ""
