{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

module Config.App where

import qualified Conferer as C
import qualified Conferer.Source.CLIArgs as Cli
import qualified Conferer.Source.Env as Env

import GHC.Generics (Generic)


mkMyConfig :: IO C.Config
mkMyConfig = C.mkConfig' []
  [
  Cli.fromConfig
  , Env.fromConfig ""
  ]

data AppConfig = AppConfig
  { port :: Int
  }
  deriving (Generic)

instance C.FromConfig AppConfig

instance C.DefaultConfig AppConfig where
  configDef =
    AppConfig
      { port = 3000
      }

runConfig :: IO ()
runConfig = do
  config <- C.mkConfig "escli"
  appConfig <- C.fetch config
  putStrLn $ "Running application with name: " ++ show (port appConfig)
  name <- C.fetchKey config "port" "This is sensible default"
  putStrLn $ "Running application with name: " ++ name
  return ()
