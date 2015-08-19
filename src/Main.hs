{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty
import System.Environment
import Control.Monad

main :: IO ()
main = do
  port <- liftM read $ getEnv "PORT"
  scotty  port  $ do
    
   get "/" $ do
     text "gotten!"
  
   delete "/" $ do
     text "deleted!"

   post "/" $ do
     text "postded!"

   put "/" $ do
     text "put-ted!"
