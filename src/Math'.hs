module Math' where

isAllDigits :: String -> Bool
isAllDigits val =
  all
    (== True)
    $ map (\x -> x `elem` ['1', '2', '3', '4', '5', '6', '7', '8', '9']) val
