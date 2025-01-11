module Problems.Problem6 (problem6) where 

problem6 :: Int
problem6 = 
    let num = 100
    in squareOfSum num - sumOfSquare num

squareOfSum :: Int -> Int 
squareOfSum num = (sum [1..num])^2

sumOfSquare :: Int -> Int 
sumOfSquare num = sum (map square [1..num])

square :: Int -> Int
square x = x^2