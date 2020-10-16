import Data.List

solve :: [Int] -> [Int]
solve list =
    let first = head list
        brokeBy f =
            foldl
                (\(a, record) i ->
                     if (f record i) == record
                         then (a + 0, record)
                         else (a + 1, i))
                (0, first) $
            list
     in [fst $ brokeBy max, fst $ brokeBy min]

main :: IO ()
main = interact $ unwords . map show . solve . map read . tail . words
