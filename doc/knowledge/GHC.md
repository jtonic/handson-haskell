GHC
===

GHC stand for Glasgow Haskell Compiler

It compiles the Haskell (hs) source files.

__Compiler options__
---

- The syntax. At the beginning at the haskell file use the following syntax

    ```
    {-# put_here_the_options #-}
    ```

- Example. The following is used in order to use Text instead of builtin String.

    ```
    {-# LANGUAGE OverloadedStrings #-}
    ```
