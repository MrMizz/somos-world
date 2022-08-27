module View.Roadmap.Tech exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class, href, target)
import Model.Lob as Lob
import Model.State as State
import Msg.Msg exposing (Msg)
import View.Roadmap.Generic as Generic


body : Html Msg
body =
    Html.div
        [ class "container"
        ]
        [ Html.div
            [ class "mt-6"
            ]
            [ Html.div
                [ class "mb-3 is-family-secondary ml-2"
                ]
                [ Html.a
                    [ class "has-sky-blue-text"
                    , State.href <| State.Roadmap Lob.Total
                    ]
                    [ Html.text "Road Map"
                    ]
                , Html.text "/ Tech"
                ]
            , Generic.view
                { title = "Web3"
                , todo =
                    [ { body =
                            Html.p
                                []
                                [ Html.text "CHAT ROOM"
                                ]
                      }
                    , { body =
                            Html.p
                                []
                                [ Html.text "DISCORD SERVER"
                                ]
                      }
                    , { body =
                            Html.p
                                []
                                [ Html.text "ABOUT / FAQ"
                                ]
                      }
                    ]
                , doing =
                    [ { body =
                            Html.p
                                []
                                [ Html.text "RELEASE 02"
                                ]
                      }
                    ]
                , done =
                    [ { body =
                            Html.p
                                []
                                [ Html.a
                                    [ class "has-sky-blue-text"
                                    , href "https://store.somos.world/#/sell"
                                    , target "_target"
                                    ]
                                    [ Html.text "SECONDARY MARKET"
                                    ]
                                ]
                      }
                    , { body =
                            Html.p
                                []
                                [ Html.text "DEPLOY SOLANA PROGRAM TO "
                                , Html.a
                                    [ class "has-sky-blue-text"
                                    , href "https://solscan.io/account/A2UL8cJAGZWetZJRgHizdGJGmsrCGR6ELBtwjj8kGeXp"
                                    , target "_target"
                                    ]
                                    [ Html.text "MAINNET-BETA"
                                    ]
                                ]
                      }
                    , { body =
                            Html.p
                                []
                                [ Html.text "FINALIZE PRICE IN SOL OF RELEASE 01"
                                ]
                      }
                    , { body =
                            Html.p
                                []
                                [ Html.text "STYLE APP WITH CSS"
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
                    , { body =
                            Html.p
                                []
                                [ Html.text "STUDY "
                                , Html.a
                                    [ class "has-sky-blue-text"
                                    , href "https://www.brianfriel.xyz/understanding-program-derived-addresses/"
                                    ]
                                    [ Html.text "PROGRAM DERIVED ADDRESSES"
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
                    ]
                }
            ]
        ]
