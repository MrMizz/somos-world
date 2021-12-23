module View.Roadmap.Args exposing (Arg, Args)

import Html exposing (Html)
import Msg.Msg exposing (Msg)


type alias Args =
    { title : String
    , todo : List Arg
    , doing : List Arg
    , done : List Arg
    }


type alias Arg =
    { body : Html Msg
    }
