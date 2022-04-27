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
                    My goal has never been to make a bunch of money. If that was the case I wouldn't be producing
                    jazz musicians.
                    """
                ]
            , Html.div
                [ class "mb-3"
                ]
                [ Html.text
                    """But I've seen indie jazz musicians build sustainable businesses. The business model is to release
                    often. Distribute most of it for free via streaming platforms. Reserve some of it exclusively for
                    purchase. This is typically manifested as limited vinyl pressings. My ambition is to reproduce this
                    in the digital world.
                    """
                ]
            , Html.div
                [ class "mb-3"
                ]
                [ Html.text
                    """This is where the web3 stuff comes into play. After some research I felt that the existing NFT
                     space didn't fit my use case. Particularly because standard protocols like
                    """
                , Html.a
                    [ class "has-sky-blue-text"
                    , href "https://www.metaplex.com"
                    , target "_target"
                    ]
                    [ Html.text "metaplex"
                    ]
                , Html.text
                    """ publish unencrypted data to datastores like
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
            , Html.div
                [ class "mb-3"
                ]
                [ Html.text
                    """So I built my own
                    """
                , Html.a
                    [ class "has-sky-blue-text"
                    , href "https://store.somos.world/#/buy"
                    , target "_target"
                    ]
                    [ Html.text "solana dapp"
                    ]
                , Html.text
                    """
                    . It provides the "right-to-download" of exclusive audio/video from our label. Complete with a
                    secondary market. We're also using this program to sell tickets to our shows/events.
                    """
                ]
            , Html.div
                [ class "mb-3"
                ]
                [ Html.text
                    """& while this dapp works great for us right now, it's obvious to me this is just a start. A proof
                    of concept really.
                    """
                ]
            , Html.div
                [ class "mb-3"
                ]
                [ Html.text "The "
                , Html.a
                    [ class "has-sky-blue-text"
                    , href "https://whitepaper.audius.co/AudiusWhitepaper.pdf"
                    , target "_target"
                    ]
                    [ Html.text "Audius Whitepaper"
                    ]
                , Html.text
                    """ details a much larger vision. My ambition of exclusive sales is specified as Content Permissioning
                    in section 3.3. The decentralized network of Content & Discovery nodes promotes the community as
                    collective benefactors.
                    """
                ]
            , Html.div
                []
                [ Html.text
                    """I feel compelled to contribute to this project. Not only do I bring day-one-production-ready
                    technical experience. I'm walking every day in this music industry & want nothing more than to
                    empower the artists who have given me so much joy in this life.
                    """
                ]
            ]
        ]
