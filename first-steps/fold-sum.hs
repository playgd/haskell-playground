sumfold :: (Num a) => [a] -> a
sumfold = foldl (+) 0


sumlambda :: (Num a) => [a] -> a
sumlambda xs = foldl (\acc x -> acc + x) 0 xs
