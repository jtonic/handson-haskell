{-# LANGUAGE DeriveAnyClass    #-}
{-# LANGUAGE OverloadedStrings #-}
module Exceptions where

import           Control.Exception   (Exception, throwIO)
import           Control.Monad.Catch (MonadCatch (catch), MonadThrow (throwM),
                                      try)
import           Data.Functor        ((<&>))
import           Data.Text           as T
import           Data.Text.IO        as T (putStrLn)

data MyArithException = DivByZero deriving (Show, Exception)

run :: IO ()
run = do
    res <- divIO 10 0
    T.putStrLn "Result: " <> print res
    return ()

divIO :: Int -> Int -> IO Int
divIO _ 0 = throwIO DivByZero
divIO a b = pure $ a `div` b

divM :: MonadThrow m => Int -> Int -> m Int
divM _ 0 = throwM DivByZero
divM a b = pure $ a `div` b

computation :: Int -> Int -> Int -> Maybe Int
computation a b c = divM a b >>= divM c

computation' :: MonadThrow m => Int -> Int -> Int -> m Int
computation' a b c = divM a b >>= divM c

divM' :: Int -> Int -> [Int]
divM' = divM

divMH :: MonadCatch m => Int -> Int -> m Int
divMH a b = try (divM a b) <&> dealWith
    where
        dealWith :: Either MyArithException Int -> Int
        dealWith (Right r) = r
        dealWith (Left _)  = 0

divCatch a b = divM a b `catch` handle where
    handle :: MyArithException -> IO Int
    handle e = do
        T.putStrLn $ T.pack $ "We've got an exception: " <> show e <> ". Use the default value of 0."
        return 0
