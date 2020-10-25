# GHC

GHC stand for Glasgow Haskell Compiler

It compiles the Haskell (hs) source files.

## Language options

- The syntax. At the beginning at the haskell file use the following syntax

  ```
  {-# put_here_the_options #-}
  ```

## LANGUAGE pragma

    - Use other defined types for String (e.g. Text)

    ```
    {-# LANGUAGE OverloadedStrings #-}
    ```

    - Use deriving for new type classes

    ```
    {-# LANGUAGE GeneralizedNewtypeDeriving #-}
    ```
