module Tuples where

import Data.Tuple (swap)
t :: (String, Integer)
t = ("jtonic", 50)

fst' (a, _) = a
snd' (_, b) = b

null' [] = True
null' (_ : _) = False


head' (x : _) = x
head' [] = error "head of empty list"

swap' :: (a, b) -> (b, a)
swap' (a, b) = swap (a, b)

tony = ("Tony", 50)
tonyName = fst tony
tonyAge = snd tony

printName :: (String, Integer) -> IO ()
printName name =
    putStrLn n
    where
        n = "Mr. " ++ fst name ++ ", your age: " ++ show (snd name)
