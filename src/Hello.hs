{-# LANGUAGE LambdaCase #-}
{-# OPTIONS_GHC -Wincomplete-patterns #-}

-- Disable incomplete patterns
-- {-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module Hello where

gender :: Int -> String
gender i = case i of
  0 -> "female"
  _ -> "male"

gender' :: Int -> String
gender' = \case
  0 -> "female"
  _ -> "male"
main :: IO ()
main = putStrLn "Hello Worlds from Haskell!!!"

mflip f = \x -> \y -> f y x

mflip' f x y = f y x
