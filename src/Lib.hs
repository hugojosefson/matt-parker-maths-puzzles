module Lib where

range :: Int -> [Int]
range max = [1..max]

isPrime :: Int -> Bool
isPrime 3 = True
isPrime 5 = True
isPrime 7 = True
isPrime 11 = True
isPrime 13 = True
isPrime 17 = True
isPrime 19 = True
isPrime 23 = True
isPrime _ = False

isPrimePair :: (Int, Int) -> Bool
isPrimePair a b = isPrime a+b

--primePairs :: [Int] -> Maybe [Int]
--primePairs numbers =
