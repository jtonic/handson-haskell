{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -Wno-orphans #-}

module Esc.Control where

import Esc.Data ( Person(..) )
import qualified Data.ByteString.Lazy.Char8 as L
import Data.Aeson
    ( encode, object, KeyValue((.=)), ToJSON(toJSON) )

run :: IO ()
run = do
    let json = encode $ Person "Antonel" 30
    L.putStrLn json

instance ToJSON Person where
    toJSON Person {..} = object
        [
            "name" .=  name
            ,"age" .= age
        ]
