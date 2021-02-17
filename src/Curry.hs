module Curry where

curry f a b = f (a, b)

uncurry f (a, b) = f a b

--Terminology: Sectioning

x = (2 ^)

y = (^ 2)

z = x 5

w = y 5

celebrate = (++ " Happy birthday!!!")

celebrateTony = celebrate "Antonel-Ernest Pazargic"

isDigit = (`elem` [0 .. 9])

isD9 = isDigit 9

isD10 = isDigit 10

f :: (Num a, Num b) => a -> b -> b
f = undefined
