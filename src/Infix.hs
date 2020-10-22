module Infix where

sum' :: Int -> Int -> Int
sum' a b = a + b


-- An infix operator declaration without associativity and precedence declarations
(+++) :: String -> String -> String
(+++) a b = a ++ b

incrementByOne = (+) 1
