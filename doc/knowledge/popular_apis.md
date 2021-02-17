Popular APIs

## `IO`

- `print` :: Show a => a -> IO ()
- `putStrLn` :: String -> IO ()

## `Predicate APIs`

- `odd` :: Integral a => a -> Bool
- `even` :: Integral a => a -> Bool

## `Lists`

- `filter` :: (a -> Bool) -> [a] -> [a]
- `null` :: Foldable t => t a -> Bool

## `String`

- `show` :: Show a => a -> String

```
λ> show 10
"10"
```

- `words` :: String -> [String]

```
λ> words "Tony the best"
["Tony","the","best"]
```

## `Numbers`

- `mod` :: Integral a => a -> a -> a