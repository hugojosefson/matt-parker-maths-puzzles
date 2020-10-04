module Lib where

import Data.List
import GHC.Float.RealFracMethods

isDivisible :: Int -> Int -> Bool
isDivisible a b = mod a b == 0

intSqrt :: Int -> Int
intSqrt a = floor $ sqrt $ int2Float a

isPrime :: Int -> Bool
isPrime n = not $ any (isDivisible n) [2..(intSqrt n)]

isPrimePair :: Int -> Int -> Bool
isPrimePair a b = isPrime $ a + b

arePrimePairs :: Int -> Int -> [Int] -> Bool
arePrimePairs a b [] = isPrimePair a b
arePrimePairs a b (c:xs) = isPrimePair a b && arePrimePairs b c xs

isSolution :: [Int] -> Bool
isSolution (a:b:xs) = arePrimePairs a b xs

primePairs :: Int -> [[Int]]
primePairs n = filter isSolution $ permutations [1..n]

primePairsCount :: Int -> Int
primePairsCount n = length $ primePairs n
