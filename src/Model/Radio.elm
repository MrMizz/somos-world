module Model.Radio exposing (Episode(..), Radio(..), toString, urlParser)

import Url.Parser as UrlParser exposing ((</>))


type Radio
    = Top
    | Selected Episode


type Episode
    = One
    | Two
    | Three


toString : Episode -> String
toString episode =
    case episode of
        One ->
            "001"

        Two ->
            "002"

        Three ->
            "003"


fromString : String -> Maybe Radio
fromString string =
    case string of
        "001" ->
            Just <| Selected One

        "002" ->
            Just <| Selected Two

        "003" ->
            Just <| Selected Three

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
