perc :: Integer -> String
perc a
  | b == 0.5 = "a half"
  | b == 1 = "a whole"
  | b == 0.25 = "a quarter"
  | otherwise = "a percent"
  where
    b :: Double
    b = fromInteger a / 100.0

pal xs
  | xs == reverse xs = True
  | otherwise = False

numbers x
  | x < 0 = -1
  | x == 0 = 0
  | x > 0 = 1

addOnePF = (+ 1)

addPF = (+)