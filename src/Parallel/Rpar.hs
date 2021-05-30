{-# OPTIONS_GHC -Wno-unused-do-bind #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}

module Parallel.Rpar
  ( runPar1
  , runSeq
  ) where

import           Algorithms.Lecture14
import           Control.DeepSeq             (force)
import           Control.Parallel.Strategies (rpar, rseq, runEval)

runPar1 :: IO ()
runPar1 = do
  let result =
        runEval $ do
          n1 <- rpar (length $ take 10000 primes)
          n2 <- rpar (length $ take 10000 primes)
          n3 <- rpar (length $ take 10000 primes)
          n4 <- rpar (length $ take 10000 primes)
          rseq n1
          rseq n2
          rseq n3
          rseq n4
          return (n1 + n2 + n3 + n4)
  putStrLn $ "Finish!!! " ++ show result

-- Sequential
runSeq :: IO ()
runSeq = do
  let n1 :: Int
      n1 = length $ take 10000 primes
  let n2 :: Int
      n2 = length $ take 10000 primes
  let n3 :: Int
      n3 = length $ take 10000 primes
  let n4 :: Int
      n4 = length $ take 10000 primes
  putStrLn $ "Finish!!! " ++ show (n1 + n2 + n3 + n4)
