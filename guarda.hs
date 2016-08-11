-- guarda é o "pipe". Funciona meio que como um "case"

guarda x | (x == 0) = 0
         | (x == 1) = 1
         | otherwise = 10
