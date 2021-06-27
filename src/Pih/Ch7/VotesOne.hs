{-# LANGUAGE OverloadedStrings #-}

module Pih.Ch7.VotesOne where

import Data.List (sort)
votes :: [String]
votes = ["Liviu", "Irina", "Irina", "Tony", "Roxana", "Liviu", "Tony", "Liviu"]


rduplic :: Ord a => [a] -> [a]
rduplic [] = []
rduplic (x: xs) = x : rduplic (filter (/= x) xs)


count :: Ord a => a -> [a] -> Int
count a = length . filter (== a)

results :: Ord a => [a] -> [(Int, a)]
results as = [(count a as, a) | a <- rduplic as]

winner :: Ord a => [a] -> a
winner = snd . maximum . results
