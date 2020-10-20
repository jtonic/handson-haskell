module Types where

main :: IO ()
main = do
    let p = (1.0, 2.0)
    putStrLn $ "Types!!!" ++ " " ++ show(p)

type Point = (Double, Double)
