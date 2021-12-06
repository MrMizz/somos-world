module Model.State exposing (State(..), href, parse)

import Html
import Html.Attributes
import Model.Project as Project exposing (Project(..))
import Url
import Url.Parser as UrlParser


type State
    = Releases
    | About
    | Links
    | Gallery Project
    | Error String



urlParser : UrlParser.Parser (State -> c) c
urlParser =
    UrlParser.oneOf
        [ UrlParser.map Links UrlParser.top
        , UrlParser.map Releases (UrlParser.s "releases")
        , UrlParser.map About (UrlParser.s "about")
        , UrlParser.map Links (UrlParser.s "links")
        , UrlParser.map Gallery
            <| UrlParser.oneOf
                [ UrlParser.map EP01 (UrlParser.s "gallery-cdmx-ep")
                ]
        ]

parse : Url.Url -> State
parse url =
    let
        target =
            -- The RealWorld spec treats the fragment like a path.
            -- This makes it *literally* the path, so we can proceed
            -- with parsing as if it had been a normal path all along.
            { url | path = Maybe.withDefault "" url.fragment, fragment = Nothing }
    in
    case UrlParser.parse urlParser target of
        Just state ->
            state

        Nothing ->
            Error "404; Invalid Path"


path : State -> String
path state =
    case state of
        Releases ->
            "#/releases"

        About ->
            "#/about"

        Links ->
            "#/links"

        Error _ ->
            "#/invalid"

        Gallery project ->
            "#/gallery-" ++ (Project.toString project)


href : State -> Html.Attribute msg
href state =
    Html.Attributes.href (path state)
