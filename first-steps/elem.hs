elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' n (x:xs)
  | (n == x) = True
  | otherwise = elem' n xs
