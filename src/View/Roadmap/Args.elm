module View.Roadmap.Args exposing (Arg, Args)


type alias Args =
    { title : String
    , todo : List Arg
    , doing : List Arg
    , done : List Arg
    }


type alias Arg =
    { body : String
    }
