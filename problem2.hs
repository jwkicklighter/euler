-- Solution works, but not nearly as quickly as I would like.

-- fib could be improved by remembering previous solutions or using
-- a list of some kind: [1,1,3,5, (n3+n4), (n4+n5), etc.]

solution :: Int
solution = sum [x | x <- (takeWhile (< 4000000) (map fib [1..])), x`mod`2 == 0]

fib :: Int -> Int
fib 1 = 1
fib 2 = 1
fib n = fib (n-1) + fib (n-2)