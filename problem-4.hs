-- simple recursive solution
myLength :: [a] -> Int
myLength [] = 0
myLength [a] = 1
myLength (x:xs) = 1 + myLength xs

--  same, but using accumulator
myLength' :: [a] -> Int
myLength' [] = 0
myLength' [a] = 1
myLength' xs = myLengthHelper xs 0
  where myLengthHelper [] acc = acc
        myLengthHelper (x:xs) acc = myLengthHelper xs (acc + 1)

myLength'' :: [a] -> Int
myLength'' = foldl (\x _ -> x + 1) 0
