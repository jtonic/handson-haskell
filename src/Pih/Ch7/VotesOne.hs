{-# LANGUAGE OverloadedStrings #-}

module Pih.Ch7.VotesOne where

votes :: [String]
votes = ["Liviu", "Irina", "Irina", "Tony", "Roxana", "Liviu", "Tony", "Liviu"]


rmduplic :: Ord a => [a] -> [a]
rmduplic [] = []
rmduplic (x: xs) = x : rmduplic (filter (/= x) xs)


count :: Ord a => a -> [a] -> Int
count a = length . filter (== a)

results :: Ord a => [a] -> [(Int, a)]
results as = [(count a as, a) | a <- rmduplic as]

winner :: Ord a => [a] -> a
winner = snd . maximum . results
