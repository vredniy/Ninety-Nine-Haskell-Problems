main :: IO()

split :: [a] -> Int -> ([a], [a])
split a i = splitAt i a

-- not optimized variant
-- split a i = (take i a, reverse $ take (length a - i) $ reverse a)

main = print $ split "abcdefghik" 3
