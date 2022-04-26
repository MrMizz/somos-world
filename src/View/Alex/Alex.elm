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
                    ]
                    [ Html.h4
                        [ class "is-size-5"
                        ]
                        [ Html.a
                            [ class "has-sky-blue-text mt-2 mb-2"
                            , href "https://carpe.io"
                            , target "_target"
                            ]
                            [ Html.text "Carpe Data"
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
                                            [ Html.text "✅ Client Data Ingestion"
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
                                            [ Html.text "✅ Entity Resolution"
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
                                                    [ Html.a
                                                        [ class "has-sky-blue-text"
                                                        , href "https://en.wikipedia.org/wiki/MinHash"
                                                        , target "_target"
                                                        ]
                                                        [ Html.text
                                                            """☑️ Min-Hash
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
                                                        endpoint bounded by an SLA with response time <1000ms
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
                        [ class "is-size-5"
                        ]
                        [ Html.text
                            """🛠 Technologies
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
                            , Html.li
                                [ class "mb-2"
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
                            , Html.li
                                [ class "mb-2"
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
        ]
