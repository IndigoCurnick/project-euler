module Problems.Problem15 (problem15) where 

import Utils.Factorial (factorial)

problem15 :: Int 
problem15 = fromIntegral (div (factorial (2 * 20)) (factorial 20 * factorial 20))

