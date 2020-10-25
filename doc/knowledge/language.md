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

  Definition: Types are a way of categorizing values.

  A `type signature` is a line of code that defines the types for a `value, expression, or function`.

  - type synonyms

    ```haskell
    type String = [Char]
    ```
    ```haskell
    type Fun a b = a -> b
    f :: Fun Int String
    f i = show i

    a 10 # "10"
    ```

  - newtype

  - type classes:

    - Eq
    - Ord
    - Show

  - type class instance

## Further reading

1. [Infix functions/operators](https://wuciawe.github.io/functional%20programming/haskell/2016/07/03/infix-functions-in-haskell.html)
