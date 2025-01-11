module Problems.Problem5 (problem5) where 

import Data.List (find)

problem5 :: Int
problem5 = findEvenDivisibleWrapper 20

findEvenDivisibleWrapper :: Int -> Int
findEvenDivisibleWrapper n = unwrapOrError (findEvenDivisible n)

findEvenDivisible :: Int -> Maybe Int
findEvenDivisible n = 
    let divisors = [1..n]
    in find (isEvenlyDivisible divisors) [n,2 * n..]

isEvenlyDivisible :: [Int] -> Int -> Bool 
isEvenlyDivisible ps n = all (doesDivide n) ps

doesDivide :: Int -> Int -> Bool 
doesDivide a b = mod a b == 0

unwrapOrError :: Maybe a -> a
unwrapOrError (Just x) = x
unwrapOrError Nothing  = error "unexpected Nothing value"