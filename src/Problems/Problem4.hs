module Problems.Problem4 (problem4) where 

problem4 :: Int
problem4 = findPalindrome 100 999

findPalindrome :: Int -> Int -> Int
findPalindrome x y = 
    let products = [a * b | a <- [x..y], b <- [x..y]]
    in maximum (filter isPalindrome products)

isPalindrome :: Int -> Bool
isPalindrome n = let s = show n in s == reverse s

