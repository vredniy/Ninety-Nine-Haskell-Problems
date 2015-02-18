main :: IO()

rotate :: [a] -> Int -> [a]
rotate a i = iterate rotate' a !! if i > 0 then i else length a + i
  where
    rotate' (x:xs) = xs ++ [x]

main = print $ rotate "abcdefgh" (-2) -- "ghabcdef"
