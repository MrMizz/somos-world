module Model.Project exposing (Project(..), toString)


type Project
    = EP01
    | LP01


toString : Project -> String
toString project =
    case project of
        EP01 ->
            "cdmx-ep"

        LP01 ->
            "sp-lp"
