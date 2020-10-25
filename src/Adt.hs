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

data Doggies a =
    Husky a
    | Mastiff a
    deriving (Eq, Show)


data DogueDeBordeaux doge = DogueDeBordeaux doge

data Price = Price Int deriving (Eq, Show)

data Manufacturer =
    Mini
  | Mazda
  | Tata
    deriving (Eq, Show)

data Airline =
    PapuAir
  | CatapultsR'Us
  | TakeYourChancesUnited
    deriving (Eq, Show)

type Size = Int

data Vehicles =
      Car Manufacturer Price
    | Plane Airline Size
    deriving (Eq, Show)

isCar ::Vehicles -> Bool
isCar (Car _ _) = True
isCar _ = False

isPlane :: Vehicles -> Bool
isPlane (Plane _ _) = True
isPlane _ = False

getMan :: Vehicles -> Manufacturer
getMan (Car m _) = m

getMan' :: Vehicles -> Maybe Manufacturer
getMan' (Car m _) = Just m
getMan' _ = Nothing

getMan'' :: Vehicles -> Either String Manufacturer
getMan'' (Car m _) = Right m
getMan'' _ = Left "No manufacturer"

newtype Goats = Goats Int deriving (Eq, Show, Bounded)
newtype Cows = Cows Int deriving (Eq, Show, Bounded)

tooManyGoats :: Int -> Bool
tooManyGoats a = a > 50


tooManyGoats' :: Goats -> Bool
tooManyGoats' (Goats g) = g > 50
