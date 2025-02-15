module Problems.Problem17 (problem17, numToWord, countLetters) where 

import Data.Char
import Data.List

problem17 :: Int 
problem17 = sum (map countLetters (map numToWord [1..1000]))

countLetters :: String -> Int
countLetters s = length (removeSpaces s)

removeSpaces :: String -> String
removeSpaces = filter (/= ' ')

type WordNum = String

ones :: Int -> WordNum
ones 1 = "one"
ones 2 = "two"
ones 3 = "three"
ones 4 = "four"
ones 5 = "five"
ones 6 = "six"
ones 7 = "seven"
ones 8 = "eight"
ones 9 = "nine"
ones n = error (show n ++ " is not a one-digit value")

teens :: Int -> WordNum
teens 10 = "ten"
teens 11 = "eleven"
teens 12 = "twelve"
teens 13 = "thirteen"
teens 14 = "fourteen"
teens 15 = "fifteen"
teens 16 = "sixteen"
teens 17 = "seventeen"
teens 18 = "eighteen"
teens 19 = "nineteen"
teens n  = error (show n ++ " is not a teen")

tens :: Int -> WordNum
tens 1 = "ten"
tens 2 = "twenty"
tens 3 = "thirty"
tens 4 = "forty"
tens 5 = "fifty"
tens 6 = "sixty"
tens 7 = "seventy"
tens 8 = "eighty"
tens 9 = "ninety"
tens n  = error (show n ++ " is not a tens place value")

groups :: [WordNum]
groups = ["", " thousand"]

groupToWord :: Int -> String
groupToWord n
    | n == 0    = ""
    | n < 10    = ones n
    | n < 20    = teens n
    | n < 100   = tens (n `div` 10) ++ ' ' : (groupToWord $ n `mod` 10)
    | n < 1000 && mod n 100 == 0 = ones (n `div` 100) ++ " hundred" ++ (groupToWord $ n `mod` 100)
    | n < 1000  = ones (n `div` 100) ++ " hundred and " ++ (groupToWord $ n `mod` 100)
    | otherwise = error (show n ++ " is not a 3-digit group")

splitNum :: Int -> [Int]
splitNum n
    | d == 0    = [n]
    | otherwise = m : splitNum d
  where
    (d,m) = n `divMod` 1000


numToWord :: Int -> String
numToWord n
    | n == 0     = "zero"
    | otherwise  = concat $ intersperse " " $ reverse $ zipWith (++) wordGroups groups
    where
        wordGroups = map groupToWord $ splitNum n