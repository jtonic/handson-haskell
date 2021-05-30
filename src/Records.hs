module Records where

-- Records
data Customer = Customer
  { customerId :: Int,
    name :: [Char],
    age :: Int
  }

jtonic :: Customer
jtonic =
  Customer
    { customerId = 1,
      name = "Jtonic",
      age = 50
    }

oldJtonic :: Customer
oldJtonic = jtonic {age = 60}

-- New Types

newtype SupplierId = SupplierId Int

-- Algebraic Data Types

data Supplier = Supplier SupplierId String Int

tutye :: Supplier
tutye = Supplier (SupplierId 1) "Liviu" 37

getSupplierId :: Supplier -> SupplierId
getSupplierId (Supplier supplierId _ _) = supplierId

getIdOfTheSupplier :: SupplierId -> Int
getIdOfTheSupplier (SupplierId id') = id'

data Person =
  Person {
    pName :: String
    , pAge :: Int
  }
  deriving (Eq, Show)

tony :: Person
tony = Person "Tony" 50
irina :: Person
irina = Person "Irina" 30
