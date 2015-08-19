{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty

main :: IO ()
main = scotty 3000 $ do
  get "/person" $ do
    text "gotten!"
  
  delete "/" $ do
    text "deleted!"

  post "/" $ do
    text "postded!"

  put "/" $ do
    text "put-ted!"
