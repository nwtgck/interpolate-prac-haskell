{-# LANGUAGE QuasiQuotes #-}

module Main where

import Data.String.Interpolate

prac1 :: IO ()
prac1 = do
  putStrLn "===== Practice 1 ====="
  let name = "Jack"
      age  = 23
  putStrLn [i| Name is #{name}. His age is #{age}.|]
  putStrLn [i| Name is #{name}. His age will be #{age+1} next year.|]


main :: IO ()
main = do
  prac1
