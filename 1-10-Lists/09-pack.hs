main :: IO()

pack :: (Eq a) => [a] -> [[a]]

pack [] = []
pack (x:xs) = (x : takeWhile (\a -> a == x) xs) : pack (dropWhile (\a -> a == x) xs)
--                           (x==) same result with (\a -> a == x)

main = putStrLn $ "Pack: " ++ (show $ pack "aaaabccaadeeee")
