{-# LANGUAGE OverloadedStrings #-}

import Hello_text_module

import qualified Data.Text as T

main = do
    putStrLn "Hello, World!"
    content_of_my_file <- f
    putStrLn content_of_my_file

