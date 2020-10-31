--https://www.hackerrank.com/challenges/kangaroo/problem
--Not very proud of this one but it works

myDiv :: Int -> Int -> Float
myDiv  a b = (fromIntegral a) / (fromIntegral b)

check x1 v1 x2 v2 x = ceiling a == floor b && a == b
    where a = (x - x1) `myDiv` v1
          b = (x - x2) `myDiv` v2

solve :: Int -> Int -> Int -> Int -> String
solve x1 v1 x2 v2 
    | count > 0 = "YES"
    | otherwise = "NO"
    where count = length . 
                  filter (check x1 v1 x2 v2) $ 
                  [maxx .. 50000000]
          maxx = max x1 x2



main :: IO()
main = do
    line <- getLine
    let [x1, v1, x2, v2] = map read . words $ line
    putStrLn $ solve x1 v1 x2 v2
