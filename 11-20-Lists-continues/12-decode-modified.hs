main :: IO()

data ListItem a = Single a | Multiple Int a

-- ability to access data fields of ListItem
listItemValue :: (ListItem a) -> (Int, a)
listItemValue (Single i) = (1, i)
listItemValue (Multiple i a) = (i, a)

decodeTuples :: [(Int, Char)] -> String
decodeTuples [] = []
decodeTuples ((i, c):xs) = replicate i c ++ decodeTuples xs -- replicate 5 'c' == 'ccccc'

decodeModified :: [ListItem Char] -> String
decodeModified a = decodeTuples $ map listItemValue a

main =
  putStrLn $ decodeModified [Multiple 4 'a', Single 'b', Multiple 2 'c',
   Multiple 2 'a', Single 'd', Multiple 4 'e']
