module Main exposing (main)

-- MAIN

import Browser
import Browser.Navigation as Nav
import Html exposing (Html)
import Model.Lob exposing (Lob(..))
import Model.Model as Model exposing (Model)
import Model.Project exposing (Project(..))
import Model.State as State exposing (State(..))
import Msg.Msg exposing (Msg(..), resetViewport)
import Sub.Sub as Sub
import Url
import View.About.About
import View.Alex.Alex
import View.Alex.Audius
import View.Alex.Dap
import View.Description.EP01
import View.Error.Error
import View.Gallery.EP01
import View.Gallery.Tropical
import View.Hero
import View.Links.Links
import View.PressKit.PressKit
import View.Radio.Radio
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
        hero : Html Msg -> Html Msg
        hero =
            View.Hero.view model

        html =
            case model.state of
                Releases ->
                    hero <| View.Releases.Releases.body

                About ->
                    hero View.About.About.body

                Links ->
                    hero View.Links.Links.body

                Gallery project ->
                    case project of
                        All ->
                            hero (View.Error.Error.body "DNE")

                        EP01 ->
                            hero View.Gallery.EP01.body

                        LP01 ->
                            hero (View.Error.Error.body "DNE")

                        Tropical ->
                            hero View.Gallery.Tropical.body

                        Paraiso ->
                            hero (View.Error.Error.body "DNE")

                Description project ->
                    case project of
                        All ->
                            hero (View.Error.Error.body "DNE")

                        EP01 ->
                            hero View.Description.EP01.body

                        LP01 ->
                            hero (View.Error.Error.body "DNE")

                        Tropical ->
                            hero (View.Error.Error.body "DNE")

                        Paraiso ->
                            hero (View.Error.Error.body "DNE")

                Roadmap lob ->
                    case lob of
                        Music ->
                            hero View.Roadmap.Music.body

                        Tech ->
                            hero View.Roadmap.Tech.body

                        Total ->
                            hero View.Roadmap.Total.body

                Radio radio ->
                    hero <| View.Radio.Radio.body radio

                PressKit ->
                    hero View.PressKit.PressKit.body

                Alex ->
                    hero View.Alex.Alex.body

                Audius ->
                    hero View.Alex.Audius.body

                Dap ->
                    hero View.Alex.Dap.body

                Error error ->
                    hero (View.Error.Error.body error)
    in
    { title = "SOMOS *"
    , body =
        [ html
        ]
    }
