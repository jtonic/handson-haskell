{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -Wno-orphans #-}

module Esc.Control where

import Data.Aeson
  ( encode,
  )
import qualified Data.ByteString.Lazy.Char8 as L
import Esc.Data (Person (..))
import Yesod

run :: IO ()
run = do
  let json = encode $ Person "Antonel" 30
  L.putStrLn json

instance ToJSON Person where
  toJSON Person {..} =
    object
      [ "name" .= name,
        "age" .= age
      ]


data App = App

mkYesod
  "App"
  [parseRoutes|
/ HomeR GET
|]

instance Yesod App

mimeType :: ContentType
mimeType = "text/haskell-show"

getHomeR :: Handler TypedContent
getHomeR =
  return $ TypedContent mimeType $ toContent $ show person
  where
    person = Person "Antonel" 50