main :: IO()

slice :: [a] -> Int -> Int -> [a]
slice a i1 i2 = map (a !!) [(i1 - 1)..(i2 - 1)]

main = print $ slice "abcdefghik" 3 7
