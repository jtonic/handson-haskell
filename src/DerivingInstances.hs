{-# LANGUAGE Safe #-}
{-# OPTIONS_GHC -Wincomplete-patterns #-}

module DerivingInstances where

data Gender = Male | Female

instance Eq Gender where
  (==) Male Male = True
  (==) Female Female = True
  (==) _ _ = False

data Identity a = Identity a

instance Eq a => Eq (Identity a) where
  (==) (Identity v) (Identity v') = v == v'

data NoId = NoId

-- error when comparing the following for eq
noId1 :: Identity NoId
noId1 = Identity NoId

noId2 :: Identity NoId
noId2 = Identity NoId

-- this is fine
id1 = Identity 1

id2 = Identity 2

id1' = Identity 1
