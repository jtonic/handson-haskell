module TypeClasses where

elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' x (y : ys)
    | x == y        = True
    | otherwise     = elem' x ys

data RGB = RGB Int Int Int

instance Eq RGB where
    (RGB r1 g1 b1) == (RGB r2 g2 b2) =
        (r1 == r2) && (g1 == g2) && (b1 == b2)

instance Show RGB where
    -- show (RGB r g b) = show(r) ++ ":"
    show (RGB r g b) = "RGB " ++ (show r) ++ " " ++ (show g)  ++ " " ++ (show b)

red :: RGB
red = RGB 255 0 0

green :: RGB
green = RGB 0 255 0

blue :: RGB
blue = RGB 0 0 255

colors :: [RGB]
colors = red : green : blue : []

data RGB' = RGB' Int Int Int deriving (Eq, Show)

elem'' :: RGB' -> [RGB'] -> Bool
elem'' _ [] = False
elem'' x (y : ys)
    | x == y    = True
    | otherwise = elem'' x ys

red' =  RGB' 255 0 0
green' = RGB' 0 255 0
blue' = RGB' 0 0 255

colors' = red' : green' : blue' : []

hasRed = elem' red' colors'


