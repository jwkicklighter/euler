solution :: Int
solution = head [a*b*c | c <- [1..], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a+b+c == 1000]