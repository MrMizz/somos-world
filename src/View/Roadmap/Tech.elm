module View.Roadmap.Tech exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class, href, target)
import Msg.Msg exposing (Msg)
import View.Roadmap.Generic as Generic


body : Html Msg
body =
    Html.div
        [ class "container"
        ]
        [ Html.div
            []
            [ Generic.view
                { title = "Web3"
                , todo =
                    [ { body =
                            Html.p
                                []
                                [ Html.text "STUDY "
                                , Html.a
                                    [ class "has-sky-blue-text"
                                    , href "https://docs.metaplex.com/"
                                    , target "_target"
                                    ]
                                    [ Html.text "METAPLEX DOCS"
                                    ]
                                ]
                      }
                    , { body =
                            Html.p
                                []
                                [ Html.text "DEPLOY SOLANA PROGRAM TO "
                                , Html.a
                                    [ class "has-sky-blue-text"
                                    , href "https://docs.solana.com/clusters"
                                    , target "_target"
                                    ]
                                    [ Html.text "DEVNET"
                                    ]
                                ]
                      }
                    , { body =
                            Html.p
                                []
                                [ Html.text "DEPLOY SOLANA PROGRAM TO "
                                , Html.a
                                    [ class "has-sky-blue-text"
                                    , href "https://docs.solana.com/clusters"
                                    , target "_target"
                                    ]
                                    [ Html.text "MAINNET-BETA"
                                    ]
                                ]
                      }
                    ]
                , doing =
                    [ { body =
                            Html.p
                                []
                                [ Html.text "DEVELOP "
                                , Html.a
                                    [ class "has-sky-blue-text"
                                    , href "https://github.com/bigtimetapin/somos-solana"
                                    , target "_target"
                                    ]
                                    [ Html.text "PROOF OF CONCEPT"
                                    ]
                                , Html.text " SOLANA D'APP"
                                ]
                      }
                    ]
                , done =
                    [ { body =
                            Html.p
                                []
                                [ Html.text "RESEARCH "
                                , Html.a
                                    [ class "has-sky-blue-text"
                                    , href "https://docs.soliditylang.org/en/v0.8.11/"
                                    , target "_target"
                                    ]
                                    [ Html.text "SOLIDITY"
                                    ]
                                ]
                      }
                    , { body =
                            Html.p
                                []
                                [ Html.text "RESEARCH "
                                , Html.a
                                    [ class "has-sky-blue-text"
                                    , href "https://docs.solana.com/"
                                    , target "_target"
                                    ]
                                    [ Html.text "SOLANA"
                                    ]
                                ]
                      }
                    , { body =
                            Html.p
                                []
                                [ Html.text "STUDY "
                                , Html.a
                                    [ class "has-sky-blue-text"
                                    , href "https://project-serum.github.io/anchor/getting-started/introduction.html"
                                    , target "_target"
                                    ]
                                    [ Html.text "ANCHOR FRAMEWORK"
                                    ]
                                , Html.text " FOR SOLANA DEV & DEPLOY"
                                ]
                      }
                    , { body =
                            Html.p
                                []
                                [ Html.text "STUDY "
                                , Html.a
                                    [ class "has-sky-blue-text"
                                    , href "https://dev.to/dabit3/the-complete-guide-to-full-stack-solana-development-with-react-anchor-rust-and-phantom-3291"
                                    , target "_target"
                                    ]
                                    [ Html.text "GUIDE TO FULL STACK SOLANA DEV"
                                    ]
                                ]
                      }
                    , { body =
                            Html.p
                                []
                                [ Html.text "STUDY "
                                , Html.a
                                    [ class "has-sky-blue-text"
                                    , href "https://www.brianfriel.xyz/understanding-program-derived-addresses/"
                                    ]
                                    [ Html.text "UNDERSTANDING PROGRAM DERIVED ADDRESSES"
                                    ]
                                ]
                      }
                    ]
                }
            ]
        ]
