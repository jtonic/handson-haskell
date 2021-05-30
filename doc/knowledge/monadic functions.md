# Type classes

- __import Control.Monad__

## Semigroup

- __(<>)__

  ```Haskell
  [1..3] <> [4,5]         -- [1,2,3,4,5]
  Just [1] <> Just [2]    -- Just [1,2]
  ```

## Monoid

- __mempty__

  ```Haskell
  [1,2,3] <> mempty` -- [1,2,3]
  ```

## Functor
---

- __fmap__

  ```Haskell
  fmap (+1) [1,2,3] -- [2,3,4]
  ```

- __(<$>)__ infix synonym for fmap

  ```Haskell
  (+1) <$> pure 1  -- 2
  ```

- __(<$)__

  ```Haskell
  True <$ Just False -- Just True
  10 <$ pure 1       -- 10
  ```

## Applicative
---

- __pure__ or __return__

  ```Haskell
  pure 10
  ```

- __(>>=)__

  ```Haskell
  Just 1 >>= \a -> Just 2 -- Just 2
  [1,2] >>= \a -> [a,a]   -- [1,1,2,2]
  ```

- __(=<<)__

  ```Haskell
  (take 2 . repeat) =<< [1,2]  - [1,1,2,2]
  ```

- __<*>__ Sequential application

  ```Haskell
  pure (+1) <*> pure (2) -- pure 3
  ```

- __liftA__

  ```Haskell
  liftA (+1) (pure 1) -- 2
  liftA (+1) [1,2,3]  -- [2,3,4]
  ```

## Monadic functions
---

- __(>>)__ execute 2 actions and discard the result of the first one

  ```Haskell
  getName msg = putStrLn msg >> getLine
  ```

- __forM (forM_)__

  ```Haskell
  forM_ (Just 1) print -- 1
  ```

- __mapM (mapM_)__

  ```Haskell
  mapM_ print (Just 1) -- 1
  ```

- __replicateM (replicateM_)__

  ```Haskell
  λ > replicateM_ 2 $ print "hello"
  "hello"
  "hello"
  ```

- __when__

  ```Haskell
  λ > debug = True
  λ > when debug $ putStrLn "Debug"
  Debug
  ```
- __unless__

  ```Haskell
  λ > debug = True
  λ > unless debug $ putStrLn "Debug" -- nothing printed
  ```

- __liftM__

  ```Haskell
  liftM (+1) $ Just 10 -- Just 11
  ```

- __liftM2__

  ```Haskell
  liftM2 (+) (Just 10) (Just 1) -- Just 11
  ```

- __filterM__

  ```Haskell
  keep :: [Int] -> IO [Int]
  keep = filterM doKeep
      where
          doKeep :: Int -> IO Bool
          doKeep x
            |   x >= 0 = pure True
            | otherwise = pure False
  ```

- __FoldM__

  ```Haskell
  sum'' :: [Int] -> IO Int
  sum'' = foldM (\a b -> pure (a + b)) 0
  ```