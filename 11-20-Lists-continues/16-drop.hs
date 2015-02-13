main :: IO()

remove' :: [a] -> Int -> Int -> [a] -> [a]
remove' [] _ _ _ = []
remove' (x:xs) index i a =
-- TODO: refactor this :shit:
  if (index + 1) `mod` i == 0
  then [] ++ remove' xs (succ index) i a;
  else [a !! index] ++ remove' xs (succ index) i a;

dropEvery :: [a] -> Int -> [a]
dropEvery a i = remove' a 0 i a


main = print $ dropEvery "abcdefghik" 3
