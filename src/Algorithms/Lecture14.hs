{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module Algorithms.Lecture14 where

ones :: [Int]
ones = 1 : ones

firstThreeOnes :: [Int]
firstThreeOnes = take 3 ones

-- Sieve of Eratosthenes: https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
primes :: [Int]
primes = sieve [2..]
sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]

twinePrimes = filter twin (zip primes $ tail primes)
    where
        twin (x, y) = y == x + 2
