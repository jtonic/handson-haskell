import Math'
main :: IO ()
main = do
  putStrLn $ if isAllDigits "1234567" then "SUCCESS!" else "FAIL!!!"
  putStrLn $ if isAllDigits "0000" then "SUCCESS!" else "FAIL!!!"
  putStrLn $ if not $ isAllDigits "1st" then "SUCCESS!" else "FAIL!!!"
  putStrLn $ if not $ isAllDigits "2nd" then "SUCCESS!" else "FAIL!!!"
  putStrLn $ if not $ isAllDigits "aaaa" then "SUCCESS!" else "FAIL!!!"
  return ()
