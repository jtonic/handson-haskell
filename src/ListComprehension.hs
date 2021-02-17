module ListComprehension where

import Data.Char

toUpper' :: [Char] -> [Char]
toUpper' xs = [toUpper c | c <- xs]

h :: [Char]
h = toUpper' "Hello"
