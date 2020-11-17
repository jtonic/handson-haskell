module IO.Files where

main :: IO ()
main = do
  content <- readFile "./file.txt"
  numbers <- rList content
  print (sum . filterEven $ numbers)

rList :: String -> IO [Integer]
rList = readIO

filterEven :: [Integer] -> [Integer]
filterEven = filter even
