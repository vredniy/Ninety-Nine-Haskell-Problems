import System.Random

main :: IO()

-- Lotto: Draw N different random numbers from the set 1..M.
diffSelect :: Int -> Int -> [Int]
diffSelect count maxy = take count $ randomRs (1, maxy) (mkStdGen 1) -- [45,48,35,18,29,11]

main = print $ diffSelect 6 49
