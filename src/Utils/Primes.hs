module Utils.Primes (sieveOfEratosthenes, primesUpTo, primes, firstNPrimes) where

sieveOfEratosthenes :: [Int] -> [Int]
sieveOfEratosthenes []     = []
sieveOfEratosthenes (p:xs) = p : sieveOfEratosthenes [x | x <- xs, x `mod` p /= 0]

primes :: [Int]
primes = sieveOfEratosthenes [2..]

primesUpTo :: Int -> [Int]
primesUpTo n = sieveOfEratosthenes [2..n]

firstNPrimes :: Int -> [Int]
firstNPrimes x = take x primes