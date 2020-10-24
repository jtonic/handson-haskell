module Functions where

posOrNeg :: (Ord a, Num a) => a -> String
posOrNeg x =
    if x >= 0
    then "positive"
    else "negative"


pow2 n =
    if n == 0
    then 1
    else 2 * (pow2 (n - 1))


repeatStr :: (Eq t, Num t) => String -> t -> String
repeatStr str n =
    case n of
    0 -> ""
    _ -> str ++ repeatStr str (n - 1)

-- | print a show-able with let/in format
printX :: Show a => a -> IO ()
printX x =
    let
        s = "Value = " ++ show x
    in
        print s

-- | print a Show-able with where format
printX' x =
        putStrLn s
        where
            y = Just 1
            s = "Value = " ++ show x ++ " " ++ show y
