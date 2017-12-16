# Practice of interpolate libarary

This is a practice of [sol/interpolate](https://github.com/sol/interpolate).


## How to run

```bash
stack build
stack exec interpolate-prac-exe
```

## Simple example

```hs
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
```

### Output

```
===== Practice 1 =====
 Name is Jack. His age is 23.
 Name is Jack. His age will be 24 next year.
===== Practice 2 using a function in '#{}' =====
 The max value in [83,1839,12,-934,78,9,0] is 1839.
```



## References
* [Hackage - interpolate: String interpolation done right](https://hackage.haskell.org/package/interpolate)
* [GitHub - sol/interpolate](https://github.com/sol/interpolate) 