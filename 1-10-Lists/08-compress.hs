main :: IO()

-- * (compress '(a a a a b c c a a d e e e e))

compress :: (Eq a) => [a] -> [a]
compress []     = []
compress (x:xs) = x : (compress $ dropWhile (==x) xs)

-- compress [x] = (takeWhile (==x) [x]) ++ (compress (dropWhile (== x) [x]))

main = putStrLn $ "Commpress: " ++ show (compress "aaaabccaadeeeeaaaabccaadeeeeaaaabccaadeeee")
