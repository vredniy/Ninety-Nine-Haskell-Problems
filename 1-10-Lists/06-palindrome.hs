main :: IO()

reverse' :: [a] -> [a]

reverse' [x] = [x]
reverse' (x:xs) = reverse' xs ++ [x]

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome xs = (==) xs (reverse' xs)

main = putStrLn $ "The reverse is: " ++ show (isPalindrome "madamimadam")
