module View.Roadmap.Generic exposing (view)

import Html exposing (Html)
import Html.Attributes exposing (class)
import Msg.Msg exposing (Msg)
import View.Roadmap.Args exposing (Arg, Args)
import View.Roadmap.Status as Status exposing (Status(..))


view : Args -> Html Msg
view args =
    Html.div
        []
        [ Html.h2
            [ class "pb-3 has-opacity"
            ]
            [ Html.text args.title
            ]
        , Html.div
            [ class "columns is-mobile has-border-3 has-font-1"
            ]
            [ Html.div
                [ class "column is-4"
                ]
                (Html.h2
                    []
                    [ Html.text ("TODO " ++ Status.toString ToDo)
                    ]
                    :: List.map li args.todo
                )
            , Html.div
                [ class "column is-4"
                ]
                (Html.h2
                    []
                    [ Html.text ("DOING " ++ Status.toString Doing)
                    ]
                    :: List.map li args.doing
                )
            , Html.div
                [ class "column is-4"
                ]
                (Html.h2
                    []
                    [ Html.text ("DONE " ++ Status.toString Done)
                    ]
                    :: List.map li args.done
                )
            ]
        ]


li : Arg -> Html Msg
li arg =
    Html.div
        [ class "has-border-3 has-font-1 has-opacity"
        ]
        [ arg.body
        ]
