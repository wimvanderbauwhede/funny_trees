module Main where

import FT

main :: IO ()
main = print $ FunnyNode 42 [FunnyNode 43 [],FunnyNode 41 []]
