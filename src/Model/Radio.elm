module Model.Radio exposing (Episode(..), Radio(..), episodes, toLinks, toString, urlParser)

import Url.Parser as UrlParser exposing ((</>))


type Radio
    = Top
    | Selected Episode


type Episode
    = One
    | Two


type alias Links =
    { soundcloud : String
    , tidal : String
    }


episodes : List Episode
episodes =
    [ One
    , Two
    ]


toLinks : Episode -> Links
toLinks episode =
    case episode of
        One ->
            { soundcloud = "https://soundcloud.com/somos-world/001a?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing"
            , tidal = "https://tidal.com/browse/playlist/0c492f3a-7ac4-4e57-a28d-9f2c401cf9c0"
            }

        Two ->
            { soundcloud = "https://soundcloud.com/somos-world/002a?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing"
            , tidal = "https://tidal.com/browse/playlist/e97a487d-e5e7-4b9d-8d12-33443e3e133b"
            }


toString : Episode -> String
toString episode =
    case episode of
        One ->
            "001"

        Two ->
            "002"


fromString : String -> Maybe Radio
fromString string =
    case string of
        "001" ->
            Just <| Selected One

        "002" ->
            Just <| Selected Two

        _ ->
            Nothing


urlParser : UrlParser.Parser (Radio -> b) b
urlParser =
    let
        parser : UrlParser.Parser (Radio -> b) b
        parser =
            UrlParser.custom "EPISODE" fromString
    in
    UrlParser.s "radio" </> parser
