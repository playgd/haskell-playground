filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f (x:xs) | f x       = x : filter' f xs
                 | otherwise = filter' f xs


-- TESTE DE MESA
-- --------------------------------------------------
-- Execução                    | Resultado
-- --------------------------- | --------------------
-- filter' (>3) [1, 2, 3, 4, 5] | [4, 5]
--                             |
-- filter' (>3) [2, 3, 4, 5]    |
-- filter' (>3) [3, 4, 5]       |
-- filter' (>3) [4, 5]          |
-- 4:(filter' (>3) [5])         |
-- 4:5:(filter' (>3) []))       |
-- 4:5:[]                      | [4, 5]
