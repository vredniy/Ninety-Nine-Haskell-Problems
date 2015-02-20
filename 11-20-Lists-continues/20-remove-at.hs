main :: IO()

removeAt :: Int -> String -> (Char, String)
removeAt i a = (a !! (i - 1), (init $ fst $ splitAt i a) ++ (snd $ splitAt i a))

main = print $ removeAt 2 "abcd" -- ('b',"acd")
