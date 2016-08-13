head' :: [a] -> a
head' [] = error "Mano, lista vazia? Serião? :|"
head' (x:_) = x


head2 :: [a] -> a
head2 list@(x:xs) = case list of
  [] -> error "Mano, lista vazia? Serião? :("
  list -> x
