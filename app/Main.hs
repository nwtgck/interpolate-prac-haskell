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

prac2 :: IO ()
prac2 = do
  putStrLn "===== Practice 2 using a function in '#{}' ====="
  let list = [83, 1839, 12, -934, 78, 9, 0]
  putStrLn [i| The max value in #{list} is #{maximum list}.|]


main :: IO ()
main = do
  prac1
  prac2
