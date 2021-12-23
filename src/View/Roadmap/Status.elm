module View.Roadmap.Status exposing (Status(..), toString)


type Status
    = ToDo
    | Doing
    | Done


toString : Status -> String
toString status =
    case status of
        ToDo ->
            "📝"

        Doing ->
            "🛠"

        Done ->
            "✅"
