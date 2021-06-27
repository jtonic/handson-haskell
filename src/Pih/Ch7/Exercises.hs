module Pih.Ch7.Exercises where

values :: [String]
values = ["One", "One", "Two", "Three", "Four", "Five"]

mapFilter :: (a -> Bool) -> (a -> b) -> [a] -> [b]
mapFilter p f = map f . filter p

runMapFilter = mapFilter (\s -> length s >= 4) length values

all' :: (a -> Bool) -> [a] -> Bool
all' p = foldr (\a b -> p a && b) True

all'' :: (a -> Bool) -> [a] -> Bool
all'' p = and . map p

any' :: (a -> Bool) -> [a] -> Bool
any' p = foldr (\a b -> p a || b) False

any'' :: (a -> Bool) -> [a] -> Bool
any'' p = or . map p

takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ [] = []
takeWhile' p (a:as)
  | p a = a : takeWhile' p as
  | otherwise = []

runTakeWhile' = takeWhile' (== "One") values

dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' _ [] = []
dropWhile' p (a:as)
  | p a = dropWhile' p as
  | otherwise = a : dropWhile' p as

runDropWhileWith = dropWhile' (== "One") values

map' :: (a -> b) -> [a] -> [b]
map' f = foldr (\a bs -> f a : bs) []

runMap = map' (<> "-bis") values

filter' :: (a -> Bool) -> [a] -> [a]
filter' p =
  foldr
    (\a bs ->
       if p a
         then a : bs
         else bs)
    []

runFilter = filter' (== "One") values
