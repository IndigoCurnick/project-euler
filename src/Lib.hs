module Lib
    ( parser
    ) where

import System.Environment (getArgs)
import Text.Read (readMaybe)

import Problems.Problem1 (problem1)

problems :: [(Int, IO ())]
problems = [
    (1, putStrLn $ show problem1)
    ]

runProblem :: Int -> IO ()
runProblem n = case lookup n problems of
    Just action -> action
    Nothing     -> putStrLn $ "Problem " ++ show n ++ " is not implemented."

parser :: IO ()
parser = do
    args <- getArgs
    case args of
        (x:_) -> case readMaybe x :: Maybe Int of
            Just num -> runProblem num
            Nothing  -> putStrLn "Please provide a valid integer as the first argument."
        [] -> putStrLn "Usage: my-project <number>"
