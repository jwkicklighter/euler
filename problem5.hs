solution :: Int
solution = head [x| x <- [1..], maximum (map (mod x) [1..20]) == 0]