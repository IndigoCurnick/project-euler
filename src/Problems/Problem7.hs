module Problems.Problem7 (problem7) where 

problem7 :: Int 
problem7 = last (firstXPrimes 10001)

primes :: [Int]
primes = sieve [2..]
  where
    sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]

firstXPrimes :: Int -> [Int]
firstXPrimes x = take x primes