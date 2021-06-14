module Pih.Ch5 where

rotate :: Int -> [a] -> [a]
rotate x xs = drop x xs <> take x xs

sumOfSquares :: Int -> Int
sumOfSquares n = sum [ x * x | x <- [1..n]]

grid :: Int -> Int -> [(Int, Int)]
grid x y = [(a,b) | a <- [0..x], b <- [0..y]]


square :: Int -> [(Int, Int)]
square n = [ (a, b) | (a, b) <- grid n n, a /= b]

replicate :: Int -> a -> [a]
replicate n a = [a | _ <- [1..n]]

pythagorean :: Int -> [(Int, Int, Int)]
pythagorean n = [(a, b, c) | a <- [1..n], b <- [1..n], c <- [1..n], a^2 + b^2 == c^2]

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

prime :: Int -> Bool
prime x = factors x == [1,x]

primes :: Int -> [Int]
primes n = [x | x <- [1..n], prime x]

perfect :: Int -> Bool
perfect n = n == sum [x | x <- factors n, x /= n]

perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], perfect x]
