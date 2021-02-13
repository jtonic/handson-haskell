Stack
===

- Build (and run) an native executable :


```sh
    > mkdir ./bin/HelloWorld
    > stack exec -- ghc src/HelloWorld.hs -odir bin/HelloWorld -hidir bin/HelloWorld -o bin/HelloWorld/HelloWorld
    > ./bin/HelloWorld/HelloWorld
    # or
    > stack exec -- ghc --make src/HelloWorld.hs
    > ./helloworld
    # or in one shot
    > stack exec -- runhaskell helloworld.hs
```

- Run tests

```sh
  > stack test
```

- Generate documentation

```sh
  > stack haddock
```

- Load a hs file in the Haskell REPL (ghci)

```sh
    > stack exec -- ghci functions.hs
    > stack ghci -- functions.hs
```

- Find out the versions of GHC, GHCi and cabal stack uses

```sh
    > stack exec -- which ghc
    > stack exec -- which ghci
    > stack exec -- which cabal
    > stack exec -- which stack
```

- Adding project's dependencies (e.g. text dependency)

  edit the section dependencies in the file `package.yaml`:

  ```yml
    dependencies:
    - base >= 4.7 && < 5
    - text >= 1.2 # text dependency
  ```

- List the project installed dependencies

```sh
    > stack ls dependencies
```

- Grab the newly added dependencies

```sh
  > stack build
```

- Changing the resolver from command line

```sh
  > stack --resolver lts-16.15 build
```

- Miscs stack commands

```sh
  > stack path
  > stack exec env
  > stack build --stack-yaml stack-7.8.yaml
  > stack templates
```

Further reading
---

- [stack doc](https://docs.haskellstack.org/en/stable/README/#the-haskell-tool-stack)
