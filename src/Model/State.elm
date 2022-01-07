module Model.State exposing (State(..), href, parse)

import Html
import Html.Attributes
import Model.Lob as Lob exposing (Lob(..))
import Model.Project as Project exposing (Project(..))
import Url
import Url.Parser as UrlParser exposing ((</>))


type State
    = Releases
    | About
    | Links
    | Gallery Project
    | Description Project
    | Roadmap Lob
    | PressKit
    | Error String


urlParser : UrlParser.Parser (State -> c) c
urlParser =
    UrlParser.oneOf
        [ UrlParser.map Links UrlParser.top
        , UrlParser.map Releases (UrlParser.s "releases")
        , UrlParser.map About (UrlParser.s "about")
        , UrlParser.map Links (UrlParser.s "links")
        , UrlParser.map PressKit (UrlParser.s "press-kit")
        , UrlParser.map (Roadmap Total) (UrlParser.s "roadmap")
        , UrlParser.map (Roadmap Music) (UrlParser.s "roadmap") </> UrlParser.s (Lob.toString Music)
        , UrlParser.map (Roadmap Tech) (UrlParser.s "roadmap") </> UrlParser.s (Lob.toString Tech)
        , UrlParser.map (Gallery EP01) (UrlParser.s "gallery") </> UrlParser.s (Project.toString EP01)
        , UrlParser.map (Description EP01) (UrlParser.s "description") </> UrlParser.s (Project.toString EP01)
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

        Gallery project ->
            "#/gallery/" ++ Project.toString project

        Description project ->
            "#/description/" ++ Project.toString project

        Roadmap lob ->
            case lob of
                Total ->
                    "#/roadmap"

                _ ->
                    "#/roadmap/" ++ Lob.toString lob

        PressKit ->
            "#/press-kit"

        Error _ ->
            "#/invalid"


href : State -> Html.Attribute msg
href state =
    Html.Attributes.href (path state)
