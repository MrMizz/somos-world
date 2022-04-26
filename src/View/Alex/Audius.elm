module View.Alex.Audius exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class, href, style, target)
import Msg.Msg exposing (Msg)


body : Html Msg
body =
    Html.div
        [ class "container"
        ]
        [ Html.h2
            [ class "is-size-4 mb-3"
            ]
            [ Html.text "Audius <> Alex Binaei"
            ]
        , Html.div
            [ style "max-width" "750px"
            ]
            [ Html.div
                [ class "mb-3"
                ]
                [ Html.text
                    """Audius has my interest. We have many similar ambitions.
                    """
                ]
            , Html.div
                [ class "mb-3"
                ]
                [ Html.text
                    """Last year I started an
                    """
                , Html.a
                    [ class "has-sky-blue-text"
                    , href "https://somos.world"
                    , target "_target"
                    ]
                    [ Html.text "independent record label"
                    ]
                , Html.text "."
                ]
            , Html.div
                [ class "mb-3"
                ]
                [ Html.text
                    """I'm involved in the creative process as executive producer.
                    I hire all the artists we work with. Have mixing notes for our engineers. Provide reference
                    tracks in the studio.
                    """
                ]
            , Html.div
                [ class "mb-3"
                ]
                [ Html.text
                    """Monetizing the project is my responsibility. Primarily because I am the principal investor.
                    My goal has never been to make a bunch of money. If that was the case I wouldn't have pursued
                    music.
                    """
                ]
            , Html.div
                [ class "mb-3"
                ]
                [ Html.text
                    """Being that I'm a software engineer, converting on digital sales has always stood out to me.
                    Exclusivity is what I'm after right now. Like a limited vinyl press, but digital.
                    """
                ]
            , Html.div
                [
                ]
                [ Html.text
                    """So this web3 thing seemed like an obvious fit. But the existing NFT space didn't fit my use case.
                    Particularly because standard protocols like
                    """
                , Html.a
                    [ class "has-sky-blue-text"
                    , href "https://www.metaplex.com"
                    , target "_target"
                    ]
                    [ Html.text "metaplex"
                    ]
                , Html.text
                    """publish unencrypted data to datastores like 
                    """
                , Html.a
                    [ class "has-sky-blue-text"
                    , href "https://www.arweave.org"
                    , target "_target"
                    ]
                    [ Html.text "arweave"
                    ]
                , Html.text "."
                ]
            ]
        ]
