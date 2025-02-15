module Utils.Digits (convertToDigits) where 

import Data.Char (digitToInt)

convertToDigits :: Integer -> [Int]
convertToDigits n = map digitToInt (show n)