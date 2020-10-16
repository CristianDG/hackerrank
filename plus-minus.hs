import Data.List

main :: IO ()
main = do
    arr <-
        map (\x -> read x :: Int) . words . last . lines <$>
        getContents
    let len = genericLength arr
        fby = genericLength . flip filter arr
        answer = map (flip (/) len . fby) [(> 0), (< 0), (== 0)]
    mapM_ print answer
