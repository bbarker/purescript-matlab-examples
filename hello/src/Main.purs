module Main where

import Prelude(show, (+))
import Effect.Class.Console (log)


-- main = log "Hello, World!"
main = log sumStr
  where
  sumXY = myAdd 3 5
  sumStr = show sumXY

myAdd :: Int -> Int -> Int
myAdd x y = x + y

