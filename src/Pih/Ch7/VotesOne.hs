{-# LANGUAGE OverloadedStrings #-}

module Pih.Ch7.VotesOne where

import Data.List (sort)
votes :: [String]
votes = ["Liviu", "Irina", "Irina", "Tony", "Roxana", "Liviu", "Tony", "Liviu"]


rmDuplicates :: Ord a => [a] -> [a]
rmDuplicates [] = []
rmDuplicates (x: xs) = x : rmDuplicates (filter (/= x) xs)


count :: Ord a => a -> [a] -> Int
count a = length . filter (== a)

results :: Ord a => [a] -> [(Int, a)]
results as = sort [(count a as, a) | a <- rmDuplicates as]

winner :: Ord a => [a] -> a
winner = snd . maximum . results
