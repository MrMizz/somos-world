module Model.Radio exposing (Episode(..), Radio(..), episodes, toDescription, toLinks, toString, urlParser)

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
    | Ten
    | Eleven
    | Twelve
    | Thirteen
    | Fourteen
    | Fifteen
    | Sixteen
    | Seventeen
    | Eighteen
    | Nineteen
    | Twenty
    | TwentyOne


type alias Links =
    { soundcloud : String
    , tidal : String
    }


type alias Description =
    String


episodes : List Episode
episodes =
    [ TwentyOne
    , Twenty
    , Nineteen
    , Eighteen
    , Seventeen
    , Sixteen
    , Fifteen
    , Fourteen
    , Thirteen
    , Twelve
    , Eleven
    , Ten
    , Nine
    , Eight
    , Seven
    , Six
    , Five
    , Four
    , Three
    , Two
    , One
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

        Ten ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1336626931&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/a9aec11e-9346-4c3e-810d-df286798608f"
            }

        Eleven ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1340924608&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/3e6f3b57-183a-4bac-b9da-8c4ca2308aba"
            }

        Twelve ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1349827858&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/032ab8c6-a82f-4c18-b504-feb05184fd41"
            }

        Thirteen ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1354581022&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/027e0102-4756-4033-893e-b0e415e7e674"
            }

        Fourteen ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1358976982&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/b2bbb4b4-9d8f-4577-8934-b7de2e1d5a9e"
            }

        Fifteen ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1363139950&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/027abc9b-41c5-4ce4-99df-2e14c8471f5b"
            }

        Sixteen ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1367846734&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/82e5550d-a3a2-4dce-b5c3-a7914da20f48"
            }

        Seventeen ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1372150474&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/8b6c8b89-7fe7-401c-b495-7212b0eb25ef"
            }

        Eighteen ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1376709226&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/1901ee8d-a608-4b68-8c36-8b7b226ba73b"
            }

        Nineteen ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1381289725&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/9021c21f-2b25-4219-8ba3-7f7fb22ebd8e"
            }

        Twenty ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1385836870&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/d503c427-25a2-48c5-a0b9-92157ff8a8c4"
            }

        TwentyOne ->
            { soundcloud = "https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/1394948947&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"
            , tidal = "https://tidal.com/browse/playlist/92255c49-b9bb-4e71-95a5-3d894ad4eb50"
            }


toDescription : Episode -> String
toDescription episode =
    case episode of
        One ->
            "80s Dance"

        Two ->
            "80s Mid-tempo"

        Three ->
            "Sade (Exclusive Hour)"

        Four ->
            "70s Jazz Fusion"

        Five ->
            "70s Jazz Fusion (Up-tempo)"

        Six ->
            "80s Dance"

        Seven ->
            "Samba/MPB"

        Eight ->
            "80s Dance"

        Nine ->
            "80s Funk & Boogie"

        Ten ->
            "Prince - For You (Full Album)"

        Eleven ->
            "Dego (Exclusive Hour)"

        Twelve ->
            "Contemporary Dance"

        Thirteen ->
            "Soft Sounds / Bossa Nova"

        Fourteen ->
            "Jazz Fusion"

        Fifteen ->
            "Contemporary Dance"

        Sixteen ->
            "Sade (Exclusive Hour)"

        Seventeen ->
            "Marvin Gaye (Exclusive Hour)"

        Eighteen ->
            "80s Luv"

        Nineteen ->
            "Tribute to Gal Costa"

        Twenty ->
            "Brasilidades / MPB"

        TwentyOne ->
            "Brasilidades / MPB"


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

        Ten ->
            "010"

        Eleven ->
            "011"

        Twelve ->
            "012"

        Thirteen ->
            "013"

        Fourteen ->
            "014"

        Fifteen ->
            "015"

        Sixteen ->
            "016"

        Seventeen ->
            "017"

        Eighteen ->
            "018"

        Nineteen ->
            "019"

        Twenty ->
            "020"

        TwentyOne ->
            "021"


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

        "010" ->
            Just <| Selected Ten

        "011" ->
            Just <| Selected Eleven

        "012" ->
            Just <| Selected Twelve

        "013" ->
            Just <| Selected Thirteen

        "014" ->
            Just <| Selected Fourteen

        "015" ->
            Just <| Selected Fifteen

        "016" ->
            Just <| Selected Sixteen

        "017" ->
            Just <| Selected Seventeen

        "018" ->
            Just <| Selected Eighteen

        "019" ->
            Just <| Selected Nineteen

        "020" ->
            Just <| Selected Twenty

        "021" ->
            Just <| Selected TwentyOne

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
