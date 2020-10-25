module Environment (main) where

import System.Environment (getArgs)
import System.Exit

main :: IO ()
main = do
    let args = getArgs
    putStrLn (parseArgs args)

parseArgs :: [String] -> String
parseArgs [] = ""
parseArgs (x:xs) =  x ++ " " ++ parseArgs xs
