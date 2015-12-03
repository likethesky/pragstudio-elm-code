module Bingo where

import Html
import String

title message times =
  message
    |> String.toUpper
    |> String.repeat times
    |> Html.text


main =
  title "bingo!" 3
