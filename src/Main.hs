{-# LANGUAGE OverloadedStrings #-}

import Hello_text_module

import System.Environment
import System.Exit
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

main = do
    putStrLn "Hello, World!"
    content_of_my_file <- f
    TIO.putStrLn content_of_my_file
    getArgs >>= parse >>= putStr
    TIO.putStrLn "END"


parse ["-h"]       = usage   >> exit
parse ["-v"]       = version >> exit
parse ["--prompt"] = undefined
parse _            = die

usage   = putStrLn "help"
version = putStrLn "scrum-linter version 0.1.0.0"
exit    = exitSuccess
die     = exitWith (ExitFailure 1)
