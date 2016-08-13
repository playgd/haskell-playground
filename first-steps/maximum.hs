maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Não tem máximo em lista vazia"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)
