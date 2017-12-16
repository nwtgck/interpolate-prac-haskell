{-# LANGUAGE QuasiQuotes #-}

module Main where

import Data.String.Interpolate

main :: IO ()
main = do
  let name = "Jack"
      age  = 23
  putStrLn [i| Name is #{name}. His age is #{age}.|]
