module Effects.Learn1 where

-- import Control.Monad (replicateM)
import System.Random

main = (randomIO :: IO Integer) >>= print

-- Long version
-- main = do
--   ran <- randomIO :: IO Integer
--   print ran

main' :: IO ()
main' = do
  g <- getStdGen
  print $ take 3 (randoms g :: [Double])

main'' = do
  g <- newStdGen
  print . take 3 $ randomRs ('a', 'z') g

main''' = do
  g <- newStdGen
  print . take 10 $ randomRs ('0', '9') g

data Coin = Heads | Tails deriving (Show, Enum, Bounded)

instance Random Coin where
  randomR (a, b) g =
    case randomR (fromEnum a, fromEnum b) g of
      (x, g') -> (toEnum x, g')
  random g = randomR (minBound, maxBound) g

main_ = do
  g <- newStdGen
  print . take 10 $ (randoms g :: [Coin])