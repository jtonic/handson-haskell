module Learn3 where

newtype FirstName = FirstName String deriving (Show)

newtype LastName = LastName String deriving (Show)

newtype Age = Age Int deriving (Show, Eq)

data Person = Person FirstName LastName Age deriving (Show)

jtonic :: Person
jtonic = Person (FirstName "Antonel") (LastName "Pazargic") (Age 50)

fName :: Person -> String
fName (Person (FirstName a) _ _) = a

lName :: Person -> String
lName (Person _ (LastName a) _) = a

age :: Person -> Int
age (Person _ _ (Age a)) = a
