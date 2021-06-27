module Pih.Ch7.VotesTwo where

import           Pih.Ch7.VotesOne (results)

votes' :: [[String]]
votes' = [
    ["Tutye"]
    , []
    , ["Irina", "Tutye", "Tony"]
    , ["Irina", "Roxana", "Tony"]
    , ["Tutye", "Roxana"]
    , ["Tony", "Roxana", "Irina"]
    ]

rmEmpty :: Eq a => [[a]] -> [[a]]
rmEmpty = filter (/= [])

eliminate :: Ord a => a -> [[a]] -> [[a]]
eliminate a = map (filter (/= a))

rank :: Ord a => [[a]] -> [a]
rank = map snd . results . map head

winner' :: Ord a => [[a]] -> Maybe a
winner' as = case rank $ rmEmpty as of
                []    -> Nothing
                [b]   -> Just b
                (b:_) -> winner' $ eliminate b as
