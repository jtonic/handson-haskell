{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE RankNTypes #-}

module ForAll where
import Data.List

main :: IO ()
main = print $ myFunction [1, 1, 3, 2 :: Integer]

-- ScopedTypeVariables
myFunction :: forall a. Ord a => [a] -> [(a, a)]
myFunction inputList = zip sortedList nubbedList
    where sortedList :: [a]
          sortedList = sort inputList
          nubbedList :: [a]
          nubbedList = nub inputList
-- /ScopedTypeVariables

-- RankNTypes
rankN :: (forall n. Num n => n -> n) -> (Int, Double)
rankN f = (f 1, f 1.0)
-- /RankNTypes

length' :: forall i. (Show i) => i -> Int
length' = length . show
