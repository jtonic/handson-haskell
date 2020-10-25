module TypeClasses where

class TooMany a where
    tooMany :: a -> Bool

instance TooMany Int where
    tooMany a = a > 50

newtype Goats = Goats Int deriving (Eq, Show, Bounded)
instance TooMany Goats where
    tooMany (Goats n) = n > 50
