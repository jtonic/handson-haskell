# Haskell language acquired knowledge

- Pure FP constraints:

  - there is no loops in haskell (FP).

    **Equivalent**: use recursion all the time

  - there is no notion of null in FP (haskell)

- Function declaration types:

  - with let/in

  ```haskell
    computation x =
                let y = x * 2
                    z = x ^ 2
                in y + z
  ```
  - with where

  ```haskell
    computation x =
                y + z
                where y = x * 2
                      z = x ^ 2
  ```

- Common operators

  | Operator | Definition             | Notes |
  | -------- | ---------------------- | ----- |
  | :        | cons operator          |
  | ++       | concatenation operator |

- Types

  - type synonyms

    ```haskell
    type String = [Char]
    ```

  - newtype

  - type classes:

    - Eq
    - Ord
    - Show

  - type class instance

## Further reading

1. [Infix functions/operators](https://wuciawe.github.io/functional%20programming/haskell/2016/07/03/infix-functions-in-haskell.html)
