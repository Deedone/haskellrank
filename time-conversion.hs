--https://www.hackerrank.com/challenges/time-conversion/problem
import Text.Printf

groupBy :: Int -> String -> [String]
groupBy x [] = []
groupBy x xs = a:groupBy x b
	where (a,b) = splitAt x xs

lastN n = reverse . take n . reverse

conTime :: String -> [Int] -> [Int]
conTime "PM" (h:m:s:_)
	| h == 12 = [h,m,s]
	| otherwise = [h+12,m,s]
conTime "AM" (h:m:s:_)
	| h == 12 = [0,m,s]
	| otherwise = [h,m,s]
conTime s _ = error s

solution :: String -> String
solution s =  printf "%02d:%02d:%02d" hours minutes seconds
	where 
		finiteS = take 10 s
		l = lastN 2 finiteS
		parsed = map read . groupBy 2 . filter (/=':') $ finiteS
		[hours, minutes, seconds] = conTime l parsed

main :: IO ()
main = interact solution

