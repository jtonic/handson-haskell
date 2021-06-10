module Pih.Ch1 where

prod' :: Num a => [a] -> a
prod' []     = 1
prod' (x:xs) = x * prod' xs

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort less ++ [x] ++ qsort more
  where
    less = [a | a <- xs, a <= x]
    more = [a | a <- xs, a > x]

revqsort :: Ord a => [a] -> [a]
revqsort = reverse . qsort
