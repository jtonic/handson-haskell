{-|
Module      : Types
Description : Types description
Copyright   : (c) Antonel Ernest Pazargic, 2020
License     : GPL-3
Maintainer  : antonel.pazargicc@gmail.com
Stability   : experimental
Portability : POSIX

Here is a longer description of this module, containing some
commentary with @some markup@.
-}
module Types where


-- | The 'head' function
head' (x : _) = x
head' [] = error "head of empty list"

main :: IO ()
main = do
    let p = (1.0, 2.0)
    putStrLn $ "Types " ++ " " ++ show p ++ " !!!"

type Point = (Double, Double)
