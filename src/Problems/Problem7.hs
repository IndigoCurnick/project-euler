module Problems.Problem7 (problem7) where 

import Utils.Primes (firstNPrimes)

problem7 :: Int 
problem7 = last (firstNPrimes 10001)



