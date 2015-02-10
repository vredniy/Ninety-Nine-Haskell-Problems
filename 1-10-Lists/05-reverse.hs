main :: IO()

reverse' :: [a] -> [a]

reverse' [x] = [x]
reverse' (x:xs) = reverse' xs ++ [x]

main = putStrLn $ "The reverse is: " ++ show (reverse' [1, 2, 3])
