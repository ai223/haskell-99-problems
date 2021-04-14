mylast :: [a] -> a
mylast [] = error "cannot get last element of empty list"
mylast [x] = x
mylast (_:xs) = mylast xs
