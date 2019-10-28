module Main where

import Prelude(Unit, show, (+))
import Effect.Class.Console (log)
import Effect (Effect)

-- main = log "Hello, World!"
main :: Effect Unit
main = log sumStr
  where
  sumXY = myAdd 3 5
  sumStr = show sumXY

myAdd :: Int -> Int -> Int
myAdd x y = x + y

