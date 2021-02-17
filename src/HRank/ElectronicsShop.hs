{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NegativeLiterals #-}
{-# LANGUAGE UndecidableInstances #-}

module HRank.ElectronicsShop where

import Control.Monad
import Data.List
import Data.Maybe

solve :: Int -> [Int] -> [Int] -> Int
solve budget keyboards drives =
  fromMaybe -1 $
    listToMaybe $
      sortBy (flip compare) $
        filter (<= budget) $
          liftM2 (+) keyboards drives

getList :: Read a => IO [a]
getList = map read . words <$> getLine

main :: IO ()
main = do
  [b, _, _] <- getList
  keyboards <- getList
  drives <- getList
  print $ solve b keyboards drives
