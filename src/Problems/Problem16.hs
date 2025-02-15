module Problems.Problem16 (problem16) where 

import Data.Char (digitToInt)
import Utils.Digits (convertToDigits)

problem16 :: Int 
problem16 = sum (convertToDigits (bigPower 2))

bigPower :: Integer -> Integer
bigPower n = n^1000


