module Problems.Problem1 (problem1) where 

problem1 :: Int
problem1 = multiplesThreeFive

multiplesThreeFive :: Int
multiplesThreeFive = fromIntegral (sum multiplesThreeFiveList)

multiplesThreeFiveList :: [Int]
multiplesThreeFiveList = filter isMultipleThreeFive [1..999]

isMultipleThreeFive :: Int -> Bool 
isMultipleThreeFive a = mod a 3 == 0 || mod a 5 == 0

isNotMultipleThreeFive :: Int -> Bool 
isNotMultipleThreeFive a = not (isMultipleThreeFive a)