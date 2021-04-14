penultimate :: [a] -> a
penultimate [] = error "cannot return penultimate value of empty list"
penultimate [a] = error "cannot return penultimate value of list with size 1"
penultimate [a, b] = a
penultimate (_:xs) = penultimate xs

penultimate' :: [a] -> a
penultimate' (x:_:[]) = x
penultimate' (_:xs) = penultimate xs
