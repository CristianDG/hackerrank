solve :: Char -> Int -> String
solve c level = unlines $ helper level level c []
  where
    helper base current c list
        | current <= 1 = (replicate delta ' ' ++ replicate current c) : list
        | otherwise =
            helper
                base
                (current - 1)
                c
                ((replicate delta ' ' ++ replicate current c) : list)
      where
        delta = base - current

main :: IO ()
main = interact $ solve '#' . read . head . lines
