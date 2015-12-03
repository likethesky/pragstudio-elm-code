module Bingo where

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

import String exposing (toUpper, repeat, trimRight)


title message times =
  message ++ " "
    |> toUpper
    |> repeat times
    |> trimRight
    |> text


pageHeader =
  h1 [ ] [ title "bingo!" 3 ]


pageFooter =
  footer [ ]
    [ a [ href "http://likethesky.com" ]
        [ text "Like The Sky" ]
    ]


view =
  div [ id "container" ] [ pageHeader, pageFooter ]


main =
  view



{-

-- greet "Larry" "Blue" "Chocolate" "Lizard"

-- outputs: Larry's favorites are: Blue Chocolate Lizard

greet name fav1 fav2 fav3 =
  name ++ "'s favorites are: " ++ fav1 ++ " " ++ fav2 ++ " " ++ fav3
    |> Html.text

main =
  greet "Larry" "Blue" "Chocolate" "Lizard"

-}
