solution :: Int
solution = (sum numList * sum numList) - (sum [x*x | x <- numList])