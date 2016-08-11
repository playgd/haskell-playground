{-
 Receber uma lista no sort e retornar a lista ordenada crescente.
 - Recebe [1,5,3]
 - Retorna [1,3,5]
-}

list :: [Int]
list = [5,9,2,100,4,3]


get_minor :: [Int] -> Int
get_minor [x] = x
get_minor (x:xs) | (x < get_minor xs) = x
                 | otherwise = get_minor xs


remove_minor :: [Int] -> [Int]
remove_minor [] = []
remove_minor (x:xs) | (x == get_minor (x:xs)) = xs
                    | otherwise = x:(remove_minor xs)


concat_minor :: [Int] -> [Int] -> [Int]
concat_minor ol ul = ol ++ [get_minor ul]


sort_aux :: [Int] -> [Int] -> [Int]
sort_aux ol [] = ol
sort_aux ol ul = sort_aux (concat_minor ol ul) (remove_minor ul)


sort :: [Int] -> [Int]
sort [] = []
sort list = sort_aux [] list
