module Problems.Problem20 (problem20) where 

import Utils.Factorial (factorial)
import Utils.Digits (convertToDigits)

problem20 :: Int 
problem20 = sum (convertToDigits (factorial 100))

