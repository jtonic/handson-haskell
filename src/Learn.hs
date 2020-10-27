module Learn where


newtype Name    = Name String deriving Show
newtype Acres   = Acres Int deriving Show
data FarmerType =
                    DairyFarmer
                  | WheatFarmer
                  | SoybeanFarmer
                  deriving Show

data Farmer     = Farmer Name Acres FarmerType deriving Show

isDairyFarmer :: Farmer -> Bool
isDairyFarmer (Farmer _ _ DairyFarmer) = True
isDairyFarmer _ = False

tony :: Farmer
tony = Farmer (Name "Antonel") (Acres 100) DairyFarmer

irina :: Farmer
irina = Farmer (Name "Irina") (Acres 1000) WheatFarmer

isDairyFarmer' = isDairyFarmer tony


-- Defining list with higher kinded types
data List a = Nil | Cons a (List a) deriving Show

-- Defining a binary tree with higher kinded types
data BinaryTree a =
    Leaf
  | Node (BinaryTree a) a (BinaryTree a)
  deriving (Eq, Ord, Show)
