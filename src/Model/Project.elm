module Model.Project exposing (Project(..), toString)


type Project
    = All
    | EP01
    | LP01
    | Tropical
    | Paraiso


toString : Project -> String
toString project =
    case project of
        All ->
            "discography"

        EP01 ->
            "cdmx-ep"

        LP01 ->
            "sp-lp"

        Tropical ->
            "tropical"

        Paraiso ->
            "paraiso"
