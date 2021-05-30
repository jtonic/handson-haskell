module Esc.Web2 where

import Yesod
import Esc.Control

run :: IO ()
run = warp 3000 App