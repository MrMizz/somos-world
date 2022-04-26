module View.Alex.Alex exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class, href, style, target)
import Msg.Msg exposing (Msg)


body : Html Msg
body =
    Html.div
        [ class "container"
        ]
        [ Html.h2
            [ class "is-size-4"
            ]
            [ Html.text "Alexander Binaei"
            ]
        , Html.address
            []
            [ Html.a
                [ class "has-sky-blue-text pr-2"
                , href "https://github.com/MrMizz"
                , target "_target"
                ]
                [ Html.text "GitHub"
                ]
            , Html.a
                [ class "has-sky-blue-text pr-2"
                , href "https://www.linkedin.com/in/alexander-binaei-2897bb131/"
                , target "_target"
                ]
                [ Html.text "LinkedIn"
                ]
            , Html.a
                [ class "has-sky-blue-text pr-2"
                , href "mailto:bigtimetapin@gmail.com"
                , target "_target"
                ]
                [ Html.text "E-Mail"
                ]
            ]
        , Html.address
            [ class "pb-3"
            ]
            [ Html.a
                [ class "has-sky-blue-text"
                , href "tel:+17147212439"
                , target "_target"
                ]
                [ Html.text "+1 (714) 721-2439"
                ]
            ]
        , Html.div
            []
            [ Html.div
                [ class "has-border-3 mb-5"
                ]
                [ Html.div
                    [ class "ml-2 mr-2"
                    , style "max-width" "750px"
                    ]
                    [ Html.h4
                        [ class "has-border-1 my-3"
                        ]
                        [ Html.a
                            [ class "has-sky-blue-text is-size-5"
                            , href "https://solana.com/"
                            , target "_target"
                            ]
                            [ Html.text "Solana Blockchain"
                            ]
                        ]
                    , Html.div
                        [ class "ml-2"
                        ]
                        [ Html.ul
                            [ class "mb-2"
                            ]
                            [ Html.li
                                [ class "mb-2"
                                ]
                                [ Html.text "🎖 Fullstack Developer"
                                , Html.div
                                    [ class "ml-5"
                                    ]
                                    [ Html.ul
                                        [ class "mb-2"
                                        ]
                                        [ Html.li
                                            [ class "mb-2"
                                            ]
                                            [ Html.text "📝 Backend"
                                            ]
                                        , Html.div
                                            [ class "ml-5"
                                            ]
                                            [ Html.ul
                                                [ class "mb-2"
                                                ]
                                                [ Html.li
                                                    [ class "mb-2"
                                                    ]
                                                    [ Html.text "☑️ "
                                                    , Html.a
                                                        [ class "has-sky-blue-text"
                                                        , href "https://github.com/bigtimetapin/somos-solana/tree/develop/programs/somos-solana"
                                                        , target "_target"
                                                        ]
                                                        [ Html.text
                                                            """Custom developed solana-program (smart contract)
                                                            """
                                                        ]
                                                    ]
                                                , Html.li
                                                    [ class "mb-2"
                                                    ]
                                                    [ Html.text
                                                        """☑️ Escrow-style app with
                                                        """
                                                    , Html.a
                                                        [ class "has-sky-blue-text"
                                                        , href "https://store.somos.world/#/buy"
                                                        , target "_target"
                                                        ]
                                                        [ Html.text "Primary"
                                                        ]
                                                    , Html.text " & "
                                                    , Html.a
                                                        [ class "has-sky-blue-text"
                                                        , href "https://store.somos.world/#/sell"
                                                        , target "_target"
                                                        ]
                                                        [ Html.text "Secondary"
                                                        ]
                                                    , Html.text " markets"
                                                    ]
                                                , Html.li
                                                    [ class "mb-2"
                                                    ]
                                                    [ Html.text
                                                        """☑️ encrypted download of digital assets authenticated &
                                                        authorized with user
                                                        """
                                                    , Html.a
                                                        [ class "has-sky-blue-text"
                                                        , href "https://docs.solana.com/wallet-guide"
                                                        , target "_target"
                                                        ]
                                                        [ Html.text "key-pair"
                                                        ]
                                                    ]
                                                ]
                                            ]
                                        , Html.li
                                            [ class "mb-2"
                                            ]
                                            [ Html.text "📝 Frontend"
                                            ]
                                        , Html.div
                                            [ class "ml-5"
                                            ]
                                            [ Html.ul
                                                [ class "mb-2"
                                                ]
                                                [ Html.li
                                                    [ class "mb-2"
                                                    ]
                                                    [ Html.text
                                                        """☑️
                                                        """
                                                    , Html.a
                                                        [ class "has-sky-blue-text"
                                                        , href "https://github.com/project-serum/anchor"
                                                        , target "_target"
                                                        ]
                                                        [ Html.text "anchor-lang"
                                                        ]
                                                    , Html.text
                                                        """,
                                                        """
                                                    , Html.a
                                                        [ class "has-sky-blue-text"
                                                        , href "https://github.com/solana-labs/solana-web3.js/"
                                                        , target "_target"
                                                        ]
                                                        [ Html.text "web3.js"
                                                        ]
                                                    , Html.text
                                                        """,
                                                        """
                                                    , Html.a
                                                        [ class "has-sky-blue-text"
                                                        , href "https://github.com/dchest/tweetnacl-js"
                                                        , target "_target"
                                                        ]
                                                        [ Html.text "tweetnacl.js"
                                                        ]
                                                    ]
                                                , Html.li
                                                    [ class "mb-2"
                                                    ]
                                                    [ Html.text
                                                        """☑️ Probably the first
                                                            """
                                                    , Html.a
                                                        [ class "has-sky-blue-text"
                                                        , href "https://github.com/bigtimetapin/somos-solana/blob/develop/assets/js/anchor/main.js"
                                                        , target "_target"
                                                        ]
                                                        [ Html.text "integration"
                                                        ]
                                                    , Html.text " with "
                                                    , Html.a
                                                        [ class "has-sky-blue-text"
                                                        , href "https://elm-lang.org"
                                                        , target "_target"
                                                        ]
                                                        [ Html.text "Elm"
                                                        ]
                                                    , Html.text " and "
                                                    , Html.a
                                                        [ class "has-sky-blue-text"
                                                        , href "https://docs.phantom.app/"
                                                        , target "_target"
                                                        ]
                                                        [ Html.text "Phantom wallet"
                                                        ]
                                                    ]
                                                ]
                                            ]
                                        ]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            , Html.div
                [ class "has-border-3 mb-5"
                ]
                [ Html.div
                    [ class "ml-2 mr-2"
                    , style "max-width" "750px"
                    ]
                    [ Html.h4
                        [ class "has-border-1 my-3"
                        ]
                        [ Html.a
                            [ class "has-sky-blue-text is-size-5"
                            , href "https://carpe.io"
                            , target "_target"
                            ]
                            [ Html.text "Carpe Data"
                            ]
                        , Html.text
                            """, March 2017 - Present
                            """
                        ]
                    , Html.div
                        [ class "ml-2"
                        ]
                        [ Html.ul
                            [ class "mb-2"
                            ]
                            [ Html.li
                                [ class "mb-2"
                                ]
                                [ Html.text "🎖 Software Engineer Lead, January 2020 - Present"
                                , Html.div
                                    [ class "ml-5"
                                    ]
                                    [ Html.ul
                                        [ class "mb-2"
                                        ]
                                        [ Html.li
                                            [ class "mb-2"
                                            ]
                                            [ Html.text "📝 Client Data Ingestion"
                                            ]
                                        , Html.div
                                            [ class "ml-5"
                                            ]
                                            [ Html.ul
                                                [ class "mb-2"
                                                ]
                                                [ Html.li
                                                    [ class "mb-2"
                                                    ]
                                                    [ Html.text
                                                        """☑️ Internal service integrated with every public HTTP endpoint
                                                        the company maintains
                                                        """
                                                    ]
                                                , Html.li
                                                    [ class "mb-2"
                                                    ]
                                                    [ Html.text
                                                        """☑️ Semantic versioning & CI/CD that coordinates major version
                                                        releases amongst all clients
                                                        """
                                                    ]
                                                , Html.li
                                                    [ class "mb-2"
                                                    ]
                                                    [ Html.text
                                                        """☑️ Abstraction of Normalizers, Validators, Parsers,
                                                        Column Mapping, etc
                                                        """
                                                    ]
                                                ]
                                            ]
                                        , Html.li
                                            [ class "mb-2"
                                            ]
                                            [ Html.text "📝 Entity Resolution"
                                            ]
                                        , Html.div
                                            [ class "ml-5"
                                            ]
                                            [ Html.ul
                                                [ class "mb-2"
                                                ]
                                                [ Html.li
                                                    [ class "mb-2"
                                                    ]
                                                    [ Html.text
                                                        """☑️ Generic
                                                        """
                                                    , Html.a
                                                        [ class "has-sky-blue-text"
                                                        , href "https://spark.apache.org"
                                                        , target "_target"
                                                        ]
                                                        [ Html.text "Apache Spark"
                                                        ]
                                                    , Html.text
                                                        """ pipeline processing terabytes of data as vertices in a
                                                        """
                                                    , Html.a
                                                        [ class "has-sky-blue-text"
                                                        , href "https://en.wikipedia.org/wiki/Graph_database"
                                                        , target "_target"
                                                        ]
                                                        [ Html.text "Graph"
                                                        ]
                                                    , Html.text
                                                        """, connecting edges transitively.
                                                        """
                                                    ]
                                                , Html.li
                                                    [ class "mb-2"
                                                    ]
                                                    [ Html.text "☑️ "
                                                    , Html.a
                                                        [ class "has-sky-blue-text"
                                                        , href "https://en.wikipedia.org/wiki/MinHash"
                                                        , target "_target"
                                                        ]
                                                        [ Html.text
                                                            """Min-Hash
                                                            """
                                                        ]
                                                    , Html.text
                                                        """ Jacardian Distance implementation
                                                        """
                                                    ]
                                                , Html.li
                                                    [ class "mb-2"
                                                    ]
                                                    [ Html.text
                                                        """☑️ ML model that replaced legacy rating system
                                                        reducing queue size by >10%
                                                        """
                                                    ]
                                                , Html.li
                                                    [ class "mb-2"
                                                    ]
                                                    [ Html.text
                                                        """☑️ ML model that supplements min-hash ids deployed as HTTP
                                                        endpoint bounded by a
                                                        """
                                                    , Html.a
                                                        [ class "has-sky-blue-text"
                                                        , href "https://en.wikipedia.org/wiki/Service-level_agreement"
                                                        , target "_target"
                                                        ]
                                                        [ Html.text
                                                            """SLA
                                                            """
                                                        ]
                                                    , Html.text
                                                        """ with response time <1000ms
                                                        """
                                                    ]
                                                ]
                                            ]
                                        ]
                                    ]
                                , Html.text "🎖 Data Engineer, June 2019 - January 2020"
                                , Html.div
                                    [ class "ml-5"
                                    ]
                                    [ Html.ul
                                        [ class "mb-2"
                                        ]
                                        [ Html.li
                                            [ class "mb-2"
                                            ]
                                            [ Html.text
                                                """☑️ Big Data Engineering
                                                """
                                            ]
                                        , Html.li
                                            [ class "mb-2"
                                            ]
                                            [ Html.text
                                                """☑️ Analytics & Machine Learning
                                                """
                                            ]
                                        ]
                                    ]
                                , Html.text "🎖 Data Scientist, March 2017 - June 2019"
                                , Html.div
                                    [ class "ml-5"
                                    ]
                                    [ Html.ul
                                        [ class "mb-2"
                                        ]
                                        [ Html.li
                                            [ class "mb-2"
                                            ]
                                            [ Html.text
                                                """☑️ Product Research
                                                """
                                            ]
                                        ]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            , Html.div
                [ class "has-border-3"
                ]
                [ Html.div
                    [ class "ml-2 mr-2"
                    ]
                    [ Html.h4
                        [ class "is-size-5 mb-2 has-border-1"
                        ]
                        [ Html.text
                            """🛠 Technologies
                            """
                        ]
                    , Html.div
                        [ class "columns"
                        ]
                        [ Html.div
                            [ class "column mb-2"
                            ]
                            [ Html.h5
                                []
                                [ Html.text "💾 Backend"
                                ]
                            , Html.div
                                [ class "ml-5"
                                ]
                                [ Html.ul
                                    []
                                    [ Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://www.scala-lang.org"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ Scala"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://www.rust-lang.org"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ Rust"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://www.haskell.org"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ Haskell"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://docs.oracle.com/javase/7/docs/api/java/lang/package-summary.html"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ Java"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://www.python.org"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ Python"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://nodejs.org/en/"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ NodeJS"
                                            ]
                                        ]
                                    ]
                                ]
                            ]
                        , Html.div
                            [ class "column mb-2"
                            ]
                            [ Html.h5
                                []
                                [ Html.text "📲 Web Development"
                                ]
                            , Html.div
                                [ class "ml-5"
                                ]
                                [ Html.ul
                                    []
                                    [ Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://elm-lang.org"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ Elm"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://www.typescriptlang.org"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ TypeScript"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://reactjs.org"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ ReactJS"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://rollupjs.org/guide/en/"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ RollupJS"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://bulma.io"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ Bulma"
                                            ]
                                        ]
                                    ]
                                ]
                            ]
                        , Html.div
                            [ class "column mb-2"
                            ]
                            [ Html.h5
                                []
                                [ Html.text "🏠 Data"
                                ]
                            , Html.div
                                [ class "ml-5"
                                ]
                                [ Html.ul
                                    []
                                    [ Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://solana.com/"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ Solana"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://spark.apache.org/docs/latest/rdd-programming-guide.html"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ RDDs"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://spark.apache.org/docs/latest/graphx-programming-guide.html"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ GraphX"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://aws.amazon.com/dynamodb/"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ DynamoDB"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://aws.amazon.com/neptune/"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ Neptune"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://www.elastic.co/"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ Elastic"
                                            ]
                                        ]
                                    ]
                                ]
                            ]
                        , Html.div
                            [ class "column mb-2"
                            ]
                            [ Html.h5
                                []
                                [ Html.text "🚜 DevOps"
                                ]
                            , Html.div
                                [ class "ml-5"
                                ]
                                [ Html.ul
                                    []
                                    [ Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://www.terraform.io"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ Terraform"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://www.jenkins.io"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ Jenkins"
                                            ]
                                        ]
                                    , Html.li
                                        [ class "mb-2"
                                        ]
                                        [ Html.a
                                            [ class "has-sky-blue-text"
                                            , href "https://aws.amazon.com"
                                            , target "_target"
                                            ]
                                            [ Html.text "☑️ AWS"
                                            ]
                                        ]
                                    ]
                                ]
                            ]
                        ]
                    ]
                ]
            ]
        ]
