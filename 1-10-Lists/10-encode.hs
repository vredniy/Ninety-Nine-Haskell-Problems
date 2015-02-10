main :: IO()

pack :: Eq t => [t] -> [(Int, t)]

pack (x:xs) =
  [(succ $ length $ takeWhile (==x) xs, x)] ++ pack (dropWhile (==x) xs)

pack [] = []

main = putStrLn $ "Pack: " ++ (show (pack "aaaabccaadeeee"))
