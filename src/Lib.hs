module Lib where

import Data.List

isPrime :: Int -> Bool
isPrime 3 = True
isPrime 5 = True
isPrime 7 = True
isPrime 11 = True
isPrime 13 = True
isPrime 17 = True
isPrime 19 = True
isPrime 23 = True
isPrime 29 = True
isPrime 31 = True
isPrime _ = False

isPrimePair :: Int -> Int -> Bool
isPrimePair a b = isPrime $ a + b

areAllPrimePairs :: [Int] -> Bool
areAllPrimePairs (a:b:[]) = isPrimePair a b
areAllPrimePairs (a:b:xs) = isPrimePair a b && areAllPrimePairs (b:xs)

primePairs :: Int -> [[Int]]
primePairs n = filter areAllPrimePairs $ permutations [1..n]

primePairsCount :: Int -> Int
primePairsCount n = length $ primePairs n
