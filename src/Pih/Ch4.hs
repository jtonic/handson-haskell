module Pih.Ch4 where

third' :: [a] -> a
third' (_ : _ : x : _) = x
third' _               = error "Not enough elements in the list."

third'' :: [a] -> a
third'' = (!! 2)

third''' :: [a] -> a
third''' = head . tail . tail

halve :: [a] -> ([a], [a])
halve xs = splitAt half xs where
    half = ((`div` 2) . length) xs


safetail :: [a] -> [a]
safetail xs | null xs   = []
            | otherwise = tail xs

safetail' :: [a] -> [a]
safetail' xs = if null xs then [] else tail xs

safetail'' :: [a] -> [a]
safetail'' [] = []
safetail'' xs = tail xs

(||-) :: Bool -> Bool -> Bool
(||-) True _  = True
(||-) False b = b

(||--) :: Bool -> Bool -> Bool
(||--) False False = False
(||--) _ _         = True

(||---) :: Bool -> Bool -> Bool
(||---) a b | a == b     = a
           | otherwise  = True

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
