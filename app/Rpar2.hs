module Rpar2 where

import           Control.Parallel.Strategies (Strategy, rpar, using)

fib :: Integer -> Integer
fib 0 = 1
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

main = print pair
  where
    pair = (fib 35, fib 36) `using` parPair

parPair :: Strategy (a, b)
parPair (a, b) = do
  a' <- rpar a
  b' <- rpar b
  return (a', b')
