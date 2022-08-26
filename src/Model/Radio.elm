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
    | Six
    | Seven
    | Eight
    | Nine


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
    , Six
    , Seven
    , Eight
    , Nine
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

        Six ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1318767130&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/76fae6bb-53d7-49f2-876f-4878f34a99b5"
            }

        Seven ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1323180613&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/3f35550f-d15b-467e-ac44-a903ad2fe243"
            }

        Eight ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1327248835&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/ba63e3f2-f9a4-4ddd-86b3-adac198b2e17"
            }

        Nine ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1332070948&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/6d40b77e-c7f9-4ff5-bf2e-86d0cacb704b"
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

        Six ->
            "006"

        Seven ->
            "007"

        Eight ->
            "008"

        Nine ->
            "009"


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

        "006" ->
            Just <| Selected Six

        "007" ->
            Just <| Selected Seven

        "008" ->
            Just <| Selected Eight

        "009" ->
            Just <| Selected Nine

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
