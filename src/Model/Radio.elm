module Model.Radio exposing (Episode(..), Radio(..), episodes, toLinks, toString, urlParser)

import Url.Parser as UrlParser exposing ((</>))


type Radio
    = Top
    | Selected Episode


type Episode
    = One
    | Two
    | Three
    | Four
    | Five


type alias Links =
    { soundcloud : String
    , tidal : String
    }


episodes : List Episode
episodes =
    [ One
    , Two
    , Three
    , Four
    , Five
    ]


toLinks : Episode -> Links
toLinks episode =
    case episode of
        One ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1298355940&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/0c492f3a-7ac4-4e57-a28d-9f2c401cf9c0"
            }

        Two ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1302046477&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/e97a487d-e5e7-4b9d-8d12-33443e3e133b"
            }

        Three ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1306015858&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/playlist/290a1e7b-905a-4a41-8a89-3e8800228a77"
            }

        Four ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1310032537&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/99bee693-230d-486b-b1f5-5836512b01f0"
            }

        Five ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1314234892&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/129dffca-a010-4fc0-beb5-4c1792b4e6c6"
            }


toString : Episode -> String
toString episode =
    case episode of
        One ->
            "001"

        Two ->
            "002"

        Three ->
            "003"

        Four ->
            "004"

        Five ->
            "005"


fromString : String -> Maybe Radio
fromString string =
    case string of
        "001" ->
            Just <| Selected One

        "002" ->
            Just <| Selected Two

        "003" ->
            Just <| Selected Three

        "004" ->
            Just <| Selected Four

        "005" ->
            Just <| Selected Five

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
