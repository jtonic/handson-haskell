{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralisedNewtypeDeriving #-}

module Learn2 where

newtype Goats = Goats Int deriving (Show, Eq, TooMany)

class TooMany a where
  tooMany :: a -> Bool

instance TooMany Int where
  tooMany a = a > 10

instance TooMany (Int, Int) where
  tooMany (a, b) = tooMany (a + b)

-- instance TooMany Goats where
--   tooMany (Goats a) = tooMany a

-- record
data Person = Person
  { firstName :: String,
    lastName :: String,
    age :: Int
  }
  deriving (Show)
