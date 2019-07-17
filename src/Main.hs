{-# LANGUAGE OverloadedStrings #-}

import Hello_text_module

import qualified Data.Text as T
import qualified Data.Text.IO as TIO

main = do
    putStrLn "Hello, World!"
    content_of_my_file <- f
    TIO.putStrLn content_of_my_file
    TIO.putStrLn "END"

