module Problems.Problem12 (problem12) where 

problem12 :: Int 
problem12 = firstTriangleWithDivisors 500

triangleNums :: [Int]
triangleNums = map triangle [1..]

triangle :: Int -> Int
triangle 0 = 0
triangle n = n + triangle (n-1)

numDivisors :: Int -> Int
numDivisors n = length [d | d <- [1..floor (sqrt (fromIntegral n))], n `mod` d == 0] * 2

firstTriangleWithDivisors :: Int -> Int
firstTriangleWithDivisors x = head [t | t <- triangleNums, numDivisors t > x]