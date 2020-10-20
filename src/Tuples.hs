module Tuples where

t :: (String, Integer)
t = ("jtonic", 50)

fst' (a, _) = a
snd' (_, b) = b

null' [] = True
null' (_ : _) = False


head' (x : _) = x
head' [] = error "head of empty list"
