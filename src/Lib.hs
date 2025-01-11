module Lib
    ( parser
    ) where

import System.Environment (getArgs)
import Text.Read (readMaybe)

import Problems.Problem1 (problem1)
import Problems.Problem2 (problem2)
import Problems.Problem3 (problem3)
import Problems.Problem4 (problem4)
import Problems.Problem5 (problem5)
import Problems.Problem6 (problem6)
import Problems.Problem7 (problem7)
import Problems.Problem8 (problem8)
import Problems.Problem9 (problem9)
import Problems.Problem10 (problem10)

problems :: [(Int, IO ())]
problems = [
    (1, putStrLn $ show problem1),
    (2, putStrLn $ show problem2),
    (3, putStrLn $ show problem3),
    (4, putStrLn $ show problem4),
    (5, putStrLn $ show problem5),
    (6, putStrLn $ show problem6),
    (7, putStrLn $ show problem7),
    (8, putStrLn $ show problem8),
    (9, putStrLn $ show problem9),
    (10, putStrLn $ show problem10)
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
