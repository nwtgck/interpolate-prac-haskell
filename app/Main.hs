{-# LANGUAGE QuasiQuotes #-}

module Main where

import Data.String.Interpolate

main :: IO ()
main = do
  let name = "Marvin"
  putStrLn [i|name: #{name}|]
