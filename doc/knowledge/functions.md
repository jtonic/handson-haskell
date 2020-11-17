# Functions

## Function declaration types:

  - with `let/in`

  ```haskell
    computation x =
                let y = x * 2
                    z = x ^ 2
                in y + z
  ```

  - with `where`

  ```haskell
  computation x =
              y + z
              where y = x * 2
                    z = x ^ 2
  ```

  - with `guards`

  ```haskell
  myAbs :: Integer -> Integer
  myAbs x
    | x < 0 = (-x)
    | otherwise = x
  ```
