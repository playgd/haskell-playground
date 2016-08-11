-- Verificar se um item está na lista

has :: [Int] -> Int -> Bool
has [] _ = False
has (x:xs) item | (x == item) = True
                | otherwise = has xs item


major :: [Int] -> Int
major [x] = x
major (x:xs) | (x > major xs) = x
             | otherwise = major xs


all_odd :: [Int] -> Bool
all_odd [] = False
all_odd (x:xs) | (mod x 2 == 0) = True
               | (mod x 2 /= 0) = False
               | otherwise = all_odd xs
