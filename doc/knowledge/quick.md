# Quick jump in the Haskell world

- __Install Haskell__

  One of the easiest and recommended way of installing Haskell platform is to install `stack`.

  See how to install it MacOS [here](https://docs.haskellstack.org/en/stable/install_and_upgrade/#using-homebrew)
  See how to install it on the other popular OSes [here](https://docs.haskellstack.org/en/stable/install_and_upgrade/#using-homebrew)


- Configure __Visual Studio Code extensions__ to work with Haskell

  Install the following extensions

  - [haskell.haskell](https://marketplace.visualstudio.com/items?itemName=haskell.haskell)
  - [justusadam.language-haskell](https://marketplace.visualstudio.com/items?itemName=justusadam.language-haskell)


- The Hello World haskell source file (Hello.hs)

```haskell
    module Main where

    main :: IO ()
    main = putStrLn "Hello Worlds from Haskell!!!"
```

- Run the Hello World haskell application

```sh
    > runghc Hello.hs
    > runhaskell Hello.hs
    > stack exec -- runghc Hello.hs
    > stack runghc Hello.hs
```
