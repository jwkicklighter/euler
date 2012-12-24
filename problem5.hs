-- Find the smallest (+) number divisible by 1-20
-- 
-- Solution should work (valid for 10) but takes much too long
-- 
-- Function takes in the upper limit (e.g. '20' for the actual solution)
-- "problem5 10" should return "2520"

solution :: Int -> Int
solution n = head [x | x <- myList, x`divCheck`n == True]
	where
		myList = [x | x <- [1..], x`mod`n == 0, x`mod`(n-1) == 0 ]

divCheck :: Int -> Int -> Bool
divCheck _ 0 = True
divCheck x n = if x`mod`n /= 0
	then False
	else divCheck x (n-1)