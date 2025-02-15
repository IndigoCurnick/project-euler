module Problems.Problem3 (problem3) where 

import Utils.Primes (primesUpTo)

problem3 :: Int
problem3 = largestPrime 600851475143

largestPrime :: Int -> Int
largestPrime num = 
  let primes = reverse (primesUpTo (largestFactor num))
  in go primes
  where
    go [] = error "No prime factor found" -- can't happen!
    go (p:ps)
      | mod num p == 0 = p
      | otherwise = go ps

largestFactor :: Int -> Int 
largestFactor num = floor (sqrt (fromIntegral num))



