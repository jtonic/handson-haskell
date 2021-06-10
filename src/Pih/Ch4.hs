module Pih.Ch4 where

third' :: [a] -> a
third' (_ : _ : x : _) = x
third' _               = error "Not enough elements in the list."

third'' :: [a] -> a
third'' = (!! 2)

third''' :: [a] -> a
third''' = head . tail . tail

halve :: [a] -> ([a], [a])
halve xs = splitAt half xs where
    half = ((`div` 2) . length) xs


safetail :: [a] -> [a]
safetail xs | null xs   = []
            | otherwise = tail xs

safetail' :: [a] -> [a]
safetail' xs = if null xs then [] else tail xs

safetail'' :: [a] -> [a]
safetail'' [] = []
safetail'' xs = tail xs

(||-) :: Bool -> Bool -> Bool
(||-) True _  = True
(||-) False b = b

(||--) :: Bool -> Bool -> Bool
(||--) False False = False
(||--) _ _         = True

(||---) :: Bool -> Bool -> Bool
(||---) a b | a == b     = a
           | otherwise  = True
