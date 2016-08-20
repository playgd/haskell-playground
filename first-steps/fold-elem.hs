-- Recursion
elem' :: (Eq a) => a -> [a] -> Bool
elem' _ [] = False
elem' item (x:xs)
  | item == x = True
  | otherwise = elem' item xs


-- Fold with `if`

elemlambdaif :: (Eq a) => a -> [a] -> Bool
elemlambdaif y ys = foldl (\acc x -> if (x == y) then True else acc) False ys


-- Fold with short circuit
elemlambda :: (Eq a) => a -> [a] -> Bool
elemlambda y ys = foldl (\acc x -> x == y || acc) False ys
