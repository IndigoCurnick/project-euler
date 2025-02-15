module Problems.Problem19 (problem19) where 

problem19 :: Int 
problem19 = length . filter (== sunday) . drop 12 . take 1212 $ since1900


since1900 = scanl nextMonth monday . concat $
              replicate 4 nonLeap ++ cycle (leap : replicate 3 nonLeap)

nonLeap :: [Int]
nonLeap = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

leap :: [Int]
leap = 31 : 29 : drop 2 nonLeap

nextMonth :: Int -> Int -> Int
nextMonth x y = (x + y) `mod` 7

sunday :: Int
sunday = 0

monday :: Int
monday = 1