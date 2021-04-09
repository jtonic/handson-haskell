{-# LANGUAGE OverloadedStrings #-}
module Esc.Web where

import qualified Network.Wai.Handler.Warp as W
import Network.Wai ( Request (pathInfo), responseLBS )
import Network.Wai.Internal ( Response )
import Network.HTTP.Types ( ResponseHeaders )
import Network.HTTP.Types.Status

run :: IO ()
run = do
    let port = 3000
    putStrLn $ "Web server started on port: " ++ show port
    W.run 3000 app

app :: Request -> (Response -> t) -> t
app req respond = respond $
    case pathInfo req of
        ["greeting"]  -> greeting
        _ -> default'
    where
        defaultHeaders = [("Content-Type", "text/plain")] :: ResponseHeaders
        default' = responseLBS status404 defaultHeaders "Woops!!! Not found."
        greeting = responseLBS status200 defaultHeaders "Hello Haskell World!!!"
