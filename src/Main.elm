module Main exposing (main)

-- MAIN

import Browser
import Browser.Navigation as Nav
import Model.Lob exposing (Lob(..))
import Model.Model as Model exposing (Model)
import Model.Project exposing (Project(..))
import Model.State as State exposing (State(..))
import Msg.Msg exposing (Msg(..), resetViewport)
import Sub.Sub as Sub
import Url
import View.About.About
import View.Description.EP01
import View.Error.Error
import View.Gallery.EP01
import View.Links.Links
import View.Releases.Releases
import View.Roadmap.Music
import View.Roadmap.Tech
import View.Roadmap.Total


main : Program () Model Msg
main =
    Browser.application
        { init = Model.init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.subs
        , onUrlChange = UrlChanged
        , onUrlRequest = LinkClicked
        }



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        UrlChanged url ->
            ( { model
                | state = State.parse url
                , url = url
              }
            , resetViewport
            )

        LinkClicked urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    ( model, Nav.pushUrl model.key (Url.toString url) )

                Browser.External href ->
                    ( model, Nav.load href )



-- VIEW


view : Model -> Browser.Document Msg
view model =
    let
        html =
            case model.state of
                Releases ->
                    View.Releases.Releases.view

                About ->
                    View.About.About.view

                Links ->
                    View.Links.Links.view

                Gallery project ->
                    case project of
                        EP01 ->
                            View.Gallery.EP01.view

                        LP01 ->
                            View.Error.Error.view "DNE"

                Description project ->
                    case project of
                        EP01 ->
                            View.Description.EP01.view

                        LP01 ->
                            View.Error.Error.view "DNE"

                Roadmap lob ->
                    case lob of
                        Music ->
                            View.Roadmap.Music.view

                        Tech ->
                            View.Roadmap.Tech.view

                        Total ->
                            View.Roadmap.Total.view

                Error error ->
                    View.Error.Error.view error
    in
    { title = "SOMOS *"
    , body =
        [ html
        ]
    }
