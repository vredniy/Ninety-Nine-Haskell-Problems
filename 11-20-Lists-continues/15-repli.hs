main :: IO()

repli :: [a] -> Int -> [a]
repli xs c = concatMap (replicate c) xs

main = print $ repli "abc" 3
