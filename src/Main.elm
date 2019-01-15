module Main exposing (main)

import Canvas exposing (..)
import Color
import Html exposing (Html)
import Html.Attributes exposing (style)


view : Html msg
view =
    let
        width =
            500

        height =
            300
    in
    Canvas.toHtml ( width, height )
        [ style "border" "1px solid black" ]
        [ shapes [ fill Color.white ] [ rect ( 0, 0 ) width height ]
        , renderHex
        ]



{-
   https://codepen.io/gibatronic/pen/ogeOeY

   var canvas = document.querySelector('#canvas').getContext('2d'),side = 0,
       size = 100,
       x = 100,
       y = 100;

   canvas.beginPath();
   canvas.moveTo(x + size * Math.cos(0), y + size * Math.sin(0));

   for (side; side < 7; side++) {
     canvas.lineTo(x + size * Math.cos(side * 2 * Math.PI / 6), y + size * Math.sin(side * 2 * Math.PI / 6));
   }

   canvas.fillStyle = "#333333";
   canvas.fill();
-}


renderHex =
    let
        side =
            0

        size =
            100

        x =
            100

        y =
            100
    in
    shapes []
        [ path ( x + size * cos 0, y + size * sin 0 )
            [ lineTo ( x + size * cos (0 * 2 * pi / 6), y + size * sin (0 * 2 * pi / 6) )
            , lineTo ( x + size * cos (1 * 2 * pi / 6), y + size * sin (1 * 2 * pi / 6) )
            , lineTo ( x + size * cos (2 * 2 * pi / 6), y + size * sin (2 * 2 * pi / 6) )
            , lineTo ( x + size * cos (3 * 2 * pi / 6), y + size * sin (3 * 2 * pi / 6) )
            , lineTo ( x + size * cos (4 * 2 * pi / 6), y + size * sin (4 * 2 * pi / 6) )
            , lineTo ( x + size * cos (5 * 2 * pi / 6), y + size * sin (5 * 2 * pi / 6) )
            , lineTo ( x + size * cos (6 * 2 * pi / 6), y + size * sin (6 * 2 * pi / 6) )
            ]
        ]


main =
    view
