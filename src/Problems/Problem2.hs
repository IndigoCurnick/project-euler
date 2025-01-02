module Problems.Problem2 (problem2) where 

problem2 :: Int
problem2 = fromIntegral (sum (filter isEven (fibUpTo 4000000)))


fibUpTo :: Int -> [Int]
fibUpTo limit = takeWhile (<= limit) fibs
  where
    fibs = 1 : 2 : zipWith (+) fibs (tail fibs)

isEven :: Int -> Bool
isEven x = mod x 2 == 0