module Form exposing (..)

{-| -}

import Browser
import Games.Knight as Knight
import Games.Towers as Towers
import Element exposing (..)
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Element.Input as Input
import Element.Region as Region


white =
    Element.rgb 1 1 1


grey =
    Element.rgb 0.9 0.9 0.9

darkGrey =
    Element.rgb 0.4 0.4 0.4

darkestGrey =
    Element.rgb 0.2 0.2 0.2

blue =
    Element.rgb 0 0 0.8


red =
    Element.rgb 0.8 0 0


darkBlue =
    Element.rgb 0 0 0.9


main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }


type Msg
    = Update Form


update msg model =
    case Debug.log "msg" msg of
        Update new ->
            new

type Model
    = Knight Knight.Model
    | Towers Towers.Model

view model =
    Element.layout
        [ Font.size 30, Background.color darkestGrey
        ]
    <|
        Element.column
            [ width shrink
            , height fill
            , centerY
            , centerX
            , spacing 36
            , padding 10
            ]
            [ {--el
                [ Region.heading 1
                , alignLeft
                , Font.size 36
                ]
                (text "Welcome to the Stylish Elephants Lunch Emporium")
            ,--} Element.row [ Region.heading 1, width fill
            , spacing 20
            , padding 10
            ]
             [Input.button
                [ Background.color blue
                , Font.color white
                , Border.color darkBlue
                , paddingXY 36 32
                , Border.rounded 3

                -- , width fill
                ]
                { onPress = Nothing
                , label = Element.text "1"
                }
            , Input.button
                [ Background.color blue
                , Font.color white
                , Border.color darkBlue
                , paddingXY 36 32
                , Border.rounded 3

                -- , width fill
                ]
                { onPress = Nothing
                , label = Element.text "2"
                }
                , Input.button
                [ Background.color darkBlue
                , Font.color white
                , Border.color blue
                , paddingXY 36 32
                , Border.rounded 3

                -- , width fill
                ]
                { onPress = Nothing
                , label = Element.text "3"
                }
                , Input.button
                [ Background.color darkBlue
                , Font.color white
                , Border.color blue
                , paddingXY 36 32
                , Border.rounded 3

                -- , width fill
                ]
                { onPress = Nothing
                , label = Element.text "4"
                }
                , Input.button
                [ Background.color red
                , Font.color white
                , Border.color blue
                , paddingXY 36 32
                , Border.rounded 3

                -- , width fill
                ]
                { onPress = Nothing
                , label = Element.text "5"
                }
                , Input.button
                [ Background.color red
                , Font.color white
                , Border.color blue
                , paddingXY 36 32
                , Border.rounded 3

                -- , width fill
                ]
                { onPress = Nothing
                , label = Element.text "6"
                }
                , Input.button
                [ Background.color red
                , Font.color white
                , Border.color blue
                , paddingXY 36 32
                , Border.rounded 3

                -- , width fill
                ]
                { onPress = Nothing
                , label = Element.text "7"
                }]
            ]
