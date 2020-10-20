{-# LANGUAGE OverloadedStrings #-}
module A.B.Module1 where

import TextShow
import Data.Text

greet :: Text -> Text
greet x =
    greeting
    where
        greeting :: Text
        greeting = "Mr. " <> x


sum' :: Int -> Int -> Int
sum' x y =
    let a = x + y
    in x + y
