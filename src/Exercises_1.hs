module Exercises_1 where

main = do
    greeting


greeting :: IO ()
greeting = do
    let a1 = ("Antonel-Ernest", "Pazargic")
    let a = Main.id a1
    print $ "Antonel is the best " ++ (fst a) ++ "  " ++ (snd a)
    let c = const "Tony" "Liviu"
    print c
    let brothers = concatenate "Tony"  " "  "Tutye"
    print brothers
    print $ allEqual "1" "1" "1"
    print $ 1 `add` 2
    let double = add 2
    print $ double 3
    print (fib 5)

    let numbers = [1, 2, 3]
    let doubled = Main.map (\x -> x * 2) numbers
    print $ "double numbers: " ++ (show doubled)


id :: a -> a
id x = x

concatenate :: String -> String -> String -> String
concatenate x y z = x ++ y ++ z

allEqual :: (Eq a) => a -> a -> a -> Bool
allEqual x y z = x == y && y == z


(add) a b = a + b

fib :: Int -> Int
fib n = case n of
    0 -> 1
    1 -> 1
    _ -> fib(n - 1) + fib(n - 2)

{-
fib 0 = 1
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)
-}

map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (x:xs) = (f x) : (Main.map f xs)

