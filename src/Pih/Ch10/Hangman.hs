module Pih.Ch10.Hangman where

import System.IO as S

hangman :: IO ()
hangman = do
    putStr "Add the word: "
    word <- sGetLine
    play word

sGetLine :: IO String
sGetLine = do
    c <- getCh
    if c == '\n'
        then do
            putChar c
            return []
    else do
        putChar '-'
        cs <- sGetLine
        return (c : cs)

getCh :: IO Char
getCh = do
    S.hSetEcho S.stdin False
    c <- getChar
    S.hSetEcho S.stdin True
    return c

play :: String -> IO ()
play w = do putStr "Enter a word: "
            m <- getLine
            if m == w then do
                putStrLn "You won!!!!"
                putStrLn $ "The word was: " <> w
            else do
                putStrLn $ match m w
                play w

-- It would be better to keep the guesses between the tries
match :: String -> String -> String
match xs ys = [ if y `elem` xs then y else '-' | y <- ys]
