{-# LANGUAGE OverloadedStrings #-}
module Imports where

import Data.Text.IO as T
import TextShow
import A.B.Module1

run :: IO ()
run = do
    let sum = showt $ sum' 1 2
    let greet' = greet "Tony"
    T.putStrLn $ "Hello!!!" <> greet' <> sum
