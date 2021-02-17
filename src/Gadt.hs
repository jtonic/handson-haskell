{-# LANGUAGE GADTs #-}

module Gadt where

data Bool where
  False :: Gadt.Bool
  True :: Gadt.Bool
  deriving (Show)
