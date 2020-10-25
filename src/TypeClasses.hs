{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances #-}

module TypeClasses where

class TooMany a where
    tooMany :: a -> Bool

instance TooMany Int where
    tooMany a = a > 50

instance TooMany (Int, Int) where
    tooMany (a, b) = a + b > 50

instance TooMany (Int, Goats) where
    tooMany (a, Goats b) = (a + b) > 50

newtype Goats = Goats Int deriving (Eq, Show, Bounded, TooMany)
