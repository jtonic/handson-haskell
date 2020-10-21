{-# LANGUAGE OverloadedStrings #-}
module Imports where

import qualified Data.Text.IO as T
import TextShow
import A.B.Module1

main :: IO ()
main = do
    let sum = showt $ sum' 1 2
    let greet' = greet "Tony"
    T.putStrLn $ "Hello!!!" <> greet' <> sum
