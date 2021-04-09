{-# LANGUAGE OverloadedStrings #-}
module WebWarpApp where

import qualified Network.Wai.Handler.Warp as W
import Network.Wai ( responseLBS )
import Network.HTTP.Types (status200)
import Network.Wai.Internal ( Response )

run :: IO ()
run = do
    let port = 3000
    putStrLn $ "Web server started on port: " ++ show port
    W.run 3000 app

app :: req -> (Response -> t) -> t
app _ respond = respond $
    responseLBS status200 [("Content-Type", "text/plain")] resp
    where
        resp = "Hello world"
