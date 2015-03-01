import System.Random (getStdGen, randomRIO)
import Data.List (permutations)

rndElement :: [a] -> IO a
rndElement xs = do
  index <- randomRIO (0, length xs - 1)
  return $ xs !! index

rndPermutation :: [a] -> IO [a]
rndPermutation xs = rndElement . permutations $ xs

main = rndPermutation "abcdef" >>= putStrLn
