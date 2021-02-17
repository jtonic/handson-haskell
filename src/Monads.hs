module Monads where

import Data.Complex
import Control.Lens
import Data.Complex.Lens

main :: IO ()
main = do putStr "c  = "
          print   c
          putStr "r  = "
          print   r
          putStr "r' = "
          print   r'
          putStr "c' = "
          print   c'


-- show
c  :: Complex Double
c  =  1.0 :+ 2.5

r  :: Double
r  =  view _realPart c

r' :: Double
r' =  2.0

c' :: Complex Double
c' =  set _realPart r' c
-- /show