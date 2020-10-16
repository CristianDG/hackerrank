compare' :: Int -> Int -> (Int, Int)
compare' a b
    | a > b = (1, 0)
    | a < b = (0, 1)
    | a == b = (0, 0)

main :: IO ()
main = do
    arr <-
        map (map (read :: String -> Int) . words) . lines <$>
        getContents
    let alice = head arr
        bob = last arr
        compared_result = zipWith compare' alice bob
        sumMap f = sum . map f
        alice_result = sumMap fst compared_result
        bob_result = sumMap snd compared_result
    putStrLn $ show alice_result <> " " <> show bob_result
