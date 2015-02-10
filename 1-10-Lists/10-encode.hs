main :: IO()

encode :: Eq t => [t] -> [(Int, t)]

encode (x:xs) =
  [(succ $ length $ takeWhile (==x) xs, x)] ++ encode (dropWhile (==x) xs)

encode [] = []

main = putStrLn $ "encode: " ++ (show (encode "aaaabccaadeeee"))
