{-# LANGUAGE Safe #-}
{-# OPTIONS_GHC -fwarn-incomplete-patterns #-}

module Lists where

x = [1, 2, 3]

numbers = [1, 2, 3]

double n =
    case n of
    []    -> []
    _     -> 2 * head n : double(tail n)

concat' = [1, 2, 3] <> [4, 5, 6]
concat'' = [1, 2, 3] <> [4, 5, 6]

head' :: [a] -> Maybe a
head' (y : _) = Just y
head' _ = Nothing
