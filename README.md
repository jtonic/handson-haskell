# handson-haskell

A playground project to lear Haskell.

- How to install Haskell

One of the easiest and recommended way of installing Haskell platform is to install `stack`.

See how to install it MacOS [here](https://docs.haskellstack.org/en/stable/install_and_upgrade/#using-homebrew)
See how to install it on the other popular OSes [here](https://docs.haskellstack.org/en/stable/install_and_upgrade/#using-homebrew)

- In this project the Visual Studio Code powerful editor is used. See below the extensions used for hs development.
  - [haskell.haskell](https://marketplace.visualstudio.com/items?itemName=haskell.haskell)
  - [justusadam.language-haskell](https://marketplace.visualstudio.com/items?itemName=justusadam.language-haskell)

Simple haskell script example
---

```haskell
    module Main where

    main :: IO ()
    main = putStrLn "Hello from Haskell!"
```

- How to create an Haskell application with modules

Run haskell script
---

```sh
    > runghc <file>.hs
    > runhaskell <file>.hs
    > stack exec -- runghc hof.hs
    > stack runghc hof.hs
```

Build an native executable:
---

```sh
    > stack exec -- ghc hof.hs -o hof
```

Load a hs file in the Haskell REPL (ghci)
---

```sh
    > ghci functions.hs
    > stack exec -- ghci functions.hs
```

Find out what ghc, ghci and cabal stack uses
---

```sh
    > stack exec -- which ghc
    > stack exec -- which ghci
    > stack exec -- which cabal
```

Adding project's dependencies (e.g. text dependency)
---

  in package.yaml:

  ```yml
    dependencies:
    - base >= 4.7 && < 5
    - text >= 1.2 # text dependency
  ```

List the project installed dependencies
---

```sh
    > stack ls dependencies
```

Changing the resolver from command line
---

```sh
  > stack --resolver lts-16.15 build
```

Miscs stack commands
---

```sh
  > stack path
  > stack exec env
  > stack build --stack-yaml stack-7.8.yaml
  > stack templates
```

GHCi (Haskell REPL) useful commands
---

```text
  :r                # reload the currently loaded hs file
  :t  <type>        # show the type of an expression (i.e. :type 1 + 1, type x)
  :i  <type>        # show the information about a type/function
  :doc <type>       # show the documentation

  # Modules
  :load mymodule.hs  # load a module (file)
  :load              # remove all modules
  :add   myfile.hs   # add a haskell module (file)
  :module (+ | -) <mod>   # add a module in the execution scope
  :reload
  :browse           # browse declarations in the current module
  :browse <module>  # browse declarations in <module>
  :show modules

  # Miscs
  :?                # show help
  :q   # quit
```

Pure FP constraints:
---

- there is no loops in haskell (FP) -> use recursion all the time
- there is no notion of null in haskell (FP)


Miscs
---

:  -> cons operator
++ -> concatenation operator


Types
---

- type synonyms
- newtype
- type classes:
  - Eq
  - Ord
  - Show
- type class instance

Haskell ecosystem
===

Tools
---

- Cabal     - Haskell package manager
- Hackage   - Haskell packages repository

Useful/popular libraries
---

- text
- text-show


Compiler options
---

At the beginning at the haskell file use the following syntax
```
{-# put_here_the_options #-}
```

For instance the following is used in order to use Text instead of builtin String.

```
{-# LANGUAGE OverloadedStrings #-}
```
