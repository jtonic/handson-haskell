module Funcy where

f1 :: Num a => a
f1 = 1

f2 :: Num a => a -> a
f2 f = f + f1

-- Function: form 1
f3 :: Integer -> String
f3 x =  let
        y = 1 :: Integer
        in
        "x = " ++ show x ++ ", y = " ++ show y
