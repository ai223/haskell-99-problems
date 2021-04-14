elem_at :: [a] -> Int -> a
elem_at (x:xs) n =
  if (n == 1)
    then x
    else elem_at xs (n - 1)
