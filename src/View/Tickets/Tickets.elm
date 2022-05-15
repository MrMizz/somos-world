module View.Tickets.Tickets exposing (body)

import Html exposing (Html)
import Html.Attributes exposing (class, href)
import Msg.Msg exposing (Msg)


body : Html Msg
body =
    Html.div
        [ class "container"
        ]
        [ Html.div
            [ class "has-border-2 has-text-centered pb-6"
            ]
            [ Html.a
                [ class "has-sky-blue-text"
                , href "https://api.whatsapp.com/send?phone=17147212439&text=Eu%20quero%20comprar%20ingressos"
                ]
                [ Html.text "Clique aqui para comprar ingressos para o DJ Set no Studio Barco"
                ]
            ]
        ]
