import System.Random

main :: IO()

-- Extract a given number of randomly selected elements from a list.
rndSelect :: [a] -> Int -> [a]
rndSelect list count = map (list !!) rndIntList
    where rndIntList = take count $ randomRs (0, length list) (mkStdGen 10)

main = print $ rndSelect "abcdefgh" 3 -- "cac"
