module View.Header exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class, src, style, width)
import Model.Model exposing (Model)
import Model.Radio as Radio
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
        [ class "is-navbar"
        ]
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
            { state = PressKit
            , title = "PRESS_KIT"
            }
        , tab_
            { state = Radio Radio.Top
            , title = "RADIO"
            }
        , Html.div
            [ style "float" "right"
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


type alias Args =
    { state : State
    , title : String
    }


tab : Model -> Args -> Html Msg
tab model args =
    Html.div
        [ style "float" "left"
        ]
        [ Html.a
            [ State.href args.state
            ]
            [ Html.button
                [ class (String.join " " [ "has-font-1", "is-button-1", isActive model args.state ])
                ]
                [ Html.text args.title
                ]
            ]
        ]


isActive : Model -> State -> String
isActive model state =
    let
        class_ =
            "is-active-header-tab"

        f : Bool -> String
        f bool =
            case bool of
                True ->
                    class_

                False ->
                    ""
    in
    case model.state of
        Roadmap _ ->
            case state of
                Roadmap _ ->
                    class_

                _ ->
                    ""

        Radio _ ->
            case state of
                Radio _ ->
                    class_

                _ ->
                    ""

        Gallery _ ->
            f (state == Releases)

        Description _ ->
            f (state == Releases)

        modelState ->
            f (modelState == state)
