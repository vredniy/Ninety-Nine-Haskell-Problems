main :: IO()

data MultipleOrSingle = Multiple (Int, Char) | Single Char deriving (Show)

encodeModified :: [Char] -> [MultipleOrSingle]
encodeModified list@(x:xs) = [pack $ takeWhile (==x) list] ++ encodeModified (dropWhile (==x) xs)
encodeModified "" = [Single ' ']

pack :: [Char] -> MultipleOrSingle
pack list@(x:xs)
  | (length list) > 1 = Multiple(length $ takeWhile (==x) list, x)
  | otherwise = Single x

main = putStrLn $ "encodeModified: "  ++ (show (encodeModified "aaaabccaadeeee"))

-- TODO: extra last element
-- prints
-- encodeModified: [Multiple (4,'a'),Single 'b',Multiple (2,'c'),Multiple (2,'a'),Single 'd',Multiple (4,'e'),Single ' ']
