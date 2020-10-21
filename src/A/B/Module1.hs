{-# LANGUAGE OverloadedStrings #-}

module A.B.Module1 where

import Data.Text

-- | The 'greet' function use to greet someone
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
