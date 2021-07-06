module Pih.Ch10.Ex where


getLine' :: IO String
getLine' = do x <- getChar
              if x == '\n'
                then
                    return []
                else do
                  xs <- getLine'
                  return (x : xs)

putStr' ::  String -> IO ()
putStr' [] = return ()
putStr' (x:xs) = do putChar x
                    putStr' xs

putStrLn' :: String -> IO ()
putStrLn' xs = putStr' xs >> putChar '\n'

strlen :: IO ()
strlen = do
    putStr' "Input the str: "
    ln <- getLine'
    putStr' "The length is: " >> putStrLn' (show $ length ln)

