-- An example from
-- https://medium.com/quick-code/getting-started-with-purescript-cd3ed3b275b5

module Pythagorean where

sourceList :: [Int]
sourceList = [1..100]

allTriples :: [(Int, Int, Int)]
allTriples = [(i, j, k) | i <- sourceList,
                          j <- sourceList,
                          k <- sourceList]

isSmallEnough :: (Int, Int, Int) -> Bool
isSmallEnough (i, j, k) = i + j + k <= 100

isPythagorean :: (Int, Int, Int) -> Bool
isPythagorean (i, j, k) = i ^ 2 + j ^ 2 == k ^ 2

finalAnswer :: [(Int, Int, Int)]
finalAnswer = filter (\t -> isPythagorean t && isSmallEnough t) allTriples
