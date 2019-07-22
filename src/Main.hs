{-# LANGUAGE OverloadedStrings #-}

import Hello_text_module

import System.Environment
import System.Exit
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

-- data Entry = Entry Int String deriving (Show)

data Entry = Entry 
    { id          :: String
    , description :: T.Text
    } deriving (Show)

foo :: [Entry]
foo = 
  [Entry "1"
    "Developers and inspectors must share a common language",
  Entry "2"
    "Developers and inspectors must share a common Definition Of Done"]

getDescription :: Entry -> T.Text
getDescription = description

main = do
    putStrLn "Hello, World!"
    content_of_my_file <- f
    TIO.putStrLn content_of_my_file
    let rules = map description foo
    mapM_ TIO.putStrLn rules
    getArgs >>= parse >>= putStr
    TIO.putStrLn "END"

parse ["-h"]       = usage   >> exit
parse ["-v"]       = version >> exit
parse ["--prompt"] = undefined
parse ["--print-rules"] = undefined
parse _            = die

usage   = putStrLn "help"
version = putStrLn "scrum-linter version 0.1.0.0"
exit    = exitSuccess
die     = exitWith (ExitFailure 1)
