module Problems.Problem9 (problem9) where 

import Data.List (find)

problem9 :: Int 
problem9 = 
    let triplet = unwrapOrError (find condition pythagoreanTriplets)
    in mult triplet

condition :: (Int, Int, Int) -> Bool 
condition (a,b,c) = a + b + c == 1000

mult :: (Int, Int, Int) -> Int
mult (a,b,c) = a * b * c

pythagoreanTriplets :: [(Int, Int, Int)]
pythagoreanTriplets = concatMap generateTriplets [2..]
  where
    generateTriplets m = [ (a, b, c) | n <- [1..m-1], let a = m * m - n * n, let b = 2 * m * n, let c = m * m + n * n]

unwrapOrError :: Maybe a -> a
unwrapOrError (Just x) = x
unwrapOrError Nothing  = error "unexpected Nothing value"