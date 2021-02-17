# Popular type classes

## `Eq`

  The `Eq` class defines equality ('==') and inequality ('/=').

```text
    class Eq a where
      (==) :: a -> a -> Bool
      (/=) :: a -> a -> Bool
      {-# MINIMAL (==) | (/=) #-}
```

## `Show`

  Conversion of values to readable 'String's.

```
    class Show a where
      showsPrec :: Int -> a -> ShowS
      show :: a -> String
      showList :: [a] -> ShowS
      {-# MINIMAL showsPrec | show #-}
```

## `Ord`

  The 'Ord' class is used for totally ordered datatypes.

```
    class Eq a => Ord a where
      compare :: a -> a -> Ordering
      (<) :: a -> a -> Bool
      (<=) :: a -> a -> Bool
      (>) :: a -> a -> Bool
      (>=) :: a -> a -> Bool
      max :: a -> a -> a
      min :: a -> a -> a
      {-# MINIMAL compare | (<=) #-}
```

## `Enum`

  Class `Enum` defines operations on sequentially ordered types.

```
class Enum a where
  succ :: a -> a
  pred :: a -> a
  toEnum :: Int -> a
  fromEnum :: a -> Int
  enumFrom :: a -> [a]
  enumFromThen :: a -> a -> [a]
  enumFromTo :: a -> a -> [a]
  enumFromThenTo :: a -> a -> a -> [a]
  {-# MINIMAL toEnum, fromEnum #-}
```

## `Bounded`

```
    class Bounded a where
      minBound :: a
      maxBound :: a
      {-# MINIMAL minBound, maxBound #-}
```

## `Num`

  Basic numeric class.

```
class Num a where
  (+) :: a -> a -> a
  (-) :: a -> a -> a
  (*) :: a -> a -> a
  negate :: a -> a
  abs :: a -> a
  signum :: a -> a
  fromInteger :: Integer -> a
  {-# MINIMAL (+), (*), abs, signum, fromInteger, (negate | (-)) #-}
```
