{-# LANGUAGE OverloadedStrings #-}

module Hello_text_module where

import qualified Data.Text as T
import qualified Data.Text.IO as T (readFile)

f :: IO T.Text
f = T.readFile "./hello.txt"

