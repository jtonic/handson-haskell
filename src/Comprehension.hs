module Comprehension where

firstTenPairs :: [(Integer, Integer)]
firstTenPairs = take 10 [(i, j) | i <- [1..10],
                j <- [1..]]
