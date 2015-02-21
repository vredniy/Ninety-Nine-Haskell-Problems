main :: IO()

insertAt :: Char -> String -> Int -> String
insertAt a list i = fst split' ++ [a] ++ snd split'
  where split' = splitAt (i-1) list

main = print $ insertAt 'X' "abcd" 2 -- "aXbcd"
