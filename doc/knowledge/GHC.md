# GHC

GHC stand for Glasgow Haskell Compiler

It compiles the Haskell (hs) source files.

## Language options

- The syntax. At the beginning at the haskell file use the following syntax

  ```
  {-# <LANGUAGE_pragma> #-}
  ```

  GHCi equivalent: :set -X<LANGUAGE_pragma>

## LANGUAGE pragma

    - Use other defined types for String (e.g. Text)

    ```
    {-# LANGUAGE OverloadedStrings #-}
    ```

    - Use deriving for new type classes

    ```
    {-# LANGUAGE GeneralizedNewtypeDeriving #-}
    ```

    - Enable the use of un-parenthesized negative numeric literals.

    ```
    {-# LANGUAGE NegativeLiterals #-}
    ```
