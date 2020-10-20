module Adt where

data MaybeInt = NoInt | JustInt Int


defaultInt :: Int -> MaybeInt -> Int

defaultInt defaultValue NoInt = defaultValue
defaultInt _ (JustInt x) = x

k :: MaybeInt
k = JustInt 1

j = defaultInt 0 k

l :: MaybeInt
l = NoInt

m = defaultInt 0 l
