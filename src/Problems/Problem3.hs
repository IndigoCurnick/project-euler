module Problems.Problem3 (problem3) where 

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

sieveOfEratosthenes :: [Int] -> [Int]
sieveOfEratosthenes []     = []
sieveOfEratosthenes (p:xs) = p : sieveOfEratosthenes [x | x <- xs, x `mod` p /= 0]

primesUpTo :: Int -> [Int]
primesUpTo n = sieveOfEratosthenes [2..n]

