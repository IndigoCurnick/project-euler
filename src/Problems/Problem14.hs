module Problems.Problem14 (problem14) where 

import Data.List

problem14 :: Int 
problem14 = (longestCollatz 1000000) + 1

collatz :: Int -> Maybe (Int, Int) 
collatz n | n == 1         = Nothing
          | rem n 2 == 0   = Just ( n, div n 2 )    
          | otherwise      = Just ( n, 3*n+1 )
                 
collatzSeq :: Int -> [Int]
collatzSeq n = unfoldr collatz n

colltazNums :: Int -> [Int]
colltazNums a = [ length ( collatzSeq n ) | n <- [1..a] ]

longestCollatz :: Int -> Int
longestCollatz a = 
    let colltazNumbers = colltazNums a
    in unwrapOrError (elemIndex (maximum colltazNumbers) colltazNumbers)

unwrapOrError :: Maybe a -> a
unwrapOrError (Just x) = x
unwrapOrError Nothing  = error "unexpected Nothing value"