module Monads.MonadicFunctions where

import           Control.Monad

mb :: Maybe String
mb = Just "Antonel"

length' :: Maybe [Char] -> Maybe Int
length' =  fmap length


greeting :: IO [()]
greeting = replicateM 3 $ putStrLn "Hello"

greeting' :: IO ()
greeting' = replicateM_ 3 $ putStrLn "Hello"

keep :: [Int] -> IO [Int]
keep = filterM doKeep
    where
        doKeep :: Int -> IO Bool
        doKeep x
          |   x >= 0 = pure True
          | otherwise = pure False

keep' :: [Int] -> IO [Int]
keep' =
    let
        doKeep :: Int -> IO Bool
        doKeep x
          |   x >= 0 = pure True
          | otherwise = pure False
    in filterM doKeep

print' :: IO [Int] -> IO ()
print' ixs = do
    arr <- ixs
    forM_ arr print

add' :: Int -> Int -> IO Int
add' a b = return (a + b)

sum' :: [Int] -> IO Int
sum' = foldM add' 0

sum'' :: [Int] -> IO Int
sum'' = foldM (\a b -> pure (a + b)) 0

printSum :: IO Int -> IO ()
printSum ix = do
    x <- ix
    print x


map' :: (a -> b) ->[a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs
