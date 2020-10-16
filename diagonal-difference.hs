import Data.List

diagonal :: [[a]] -> [a]
diagonal l = d_helper l t 0
  where
    t = length l
    d_helper list tam row =
        if tam == row
            then []
            else (list !! row !! row) : d_helper list tam (row + 1)

rotate90 :: [[a]] -> [[a]]
rotate90 = map reverse . transpose

main :: IO ()
main = do
    arr <-
        map (map (read :: String -> Int) . words) . tail . lines <$>
        getContents
    print $ abs $ sum (diagonal arr) - sum (diagonal $ rotate90 arr)
