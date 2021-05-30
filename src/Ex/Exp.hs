module Ex.Exp where

main :: IO ()
main = do
  let a = take 3 "abcd"
  putStr $ "Result:" ++ a

foo :: [a] -> [a]
foo = take 3

qsort [] = []
qsort (y : ys) = qsort xs ++ [y] ++ qsort zs
  where
    xs = [x | x <- ys, x <= y]
    zs = [z | z <- ys, z > y]

-- n function

n = a `div` length xs
  where
    a = 10
    xs = [1 .. 5]

last' = head . reverse

last'' ns = ns !! (length ns - 1)

last''' ns = (!!) ns $ length ns - 1

init' xs = take (length xs - 1) xs
