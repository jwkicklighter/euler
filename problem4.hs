solution :: Int
solution = maximum (filter isPal [x * y | x <- bigList, y <- bigList] )
	where
		bigList = [999,998..100]
		isPal x = show x == (reverse (show x))