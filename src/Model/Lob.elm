module Model.Lob exposing (Lob(..), toString)


type Lob
    = Music
    | Tech
    | Total


toString : Lob -> String
toString lob =
    case lob of
        Music ->
            "music"

        Tech ->
            "tech"

        Total ->
            "total"
