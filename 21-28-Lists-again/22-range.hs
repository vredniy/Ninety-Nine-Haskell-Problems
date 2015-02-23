main :: IO()

range :: Int -> Int -> [Int]
range a b = [a..b]

main = print $ range 4 9 -- [4,5,6,7,8,9]
