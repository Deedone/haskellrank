-- https://www.hackerrank.com/challenges/staircase/problem
sol :: Int -> Int -> String
sol 0 _ = ""
sol n s = (sol (n-1) (s+1)) ++ replicate s ' ' ++ replicate n '#' ++ "\n"



main :: IO ()
main = interact $ flip sol 0 . read . head . words

