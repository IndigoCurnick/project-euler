module Problems.Problem10 (problem10) where 

problem10 :: Int 
problem10 = sum (primesUpTo 2000000)

primesUpTo :: Int -> [Int]
primesUpTo num = 2 : filter (prime (primesUpTo num)) [3,5..num] where
  prime (p:ps) n = p*p > n || rem n p /= 0 && prime ps n