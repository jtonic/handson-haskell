module Patterns where

-- Builder pattern
data Person = Person String Int Bool
                deriving (Show)

builder :: String -> Int -> Bool -> Person
builder = Person

tony :: Person
tony = builder "Antonel" 50 True

