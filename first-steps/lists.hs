-- Listas são valores entre colchetes
-- Os valores da lista devem ser de um único tipo [1, 2, 3] ou ['a', 'b']
-- Posso ter lista de listas, lista de tuplas, lista de inteiros, etc
-- Uma sequência de caracteres é uma lista.
-- Um caractere é representado com aspas simples: 'a', 'b'
-- Uma sequência de caracteres (Char) é uma lista de caracteres: "ab"
-- O primeiro item da lista é chamado de "cabeça", e eu posso pegar com "head": head [1, 2, 3] -- 1
-- O restante da lista é a "cauda", que eu posso pegar com "tail": tail [1, 2, 3] -- [2, 3]

size_list [] = 0

-- É possível criar uma lista, usando dois pontos: 1:[2, 3] resultará em [1, 2, 3]. 1 Será adicionado à lista.
-- 1:2:3:[] retornará [1, 2, 3], ou seja: 1, 2 e 3 serão adicionados à lista vazia.
-- Para passar uma lista por parâmetro e separar a "cabeça" da "cauda", eu posso usar:
-- entre parênteses:
--   - a variável representando a cabeça;
--   - o sinal de dois pontos;
--   - a variável representando a cauda
-- No caso do exemplo abaixo, "x" representa a cabeça e "xs" representa a "cauda"

size_list (x:xs) = 1 + size_list xs


compare_lists :: [Int] -> [Int] -> Bool
compare_lists [] [] = True
compare_lists [] _ = False
compare_lists _ [] = False
compare_lists (x:xs) (x2:xs2) | (x == x2) = compare_lists xs xs2
                              | otherwise = False





-- inv_aux é criada depois do inverse_list
inv_aux :: [t] -> [t] -> [t]

-- Se a lista passada for vazia, somente retorna a lista invertida - l_inv
inv_aux [] l_inv = l_inv

-- Senão, chama recursivamente a inv_aux, passando a cauda da lista como primeiro parâmetro, e concatenando a lista invertida - l_inv - com a cabeça da lista.
-- O ++ concatena listas. O "x" está entre colchetes porque ele precisa ser uma lista, que será concatenada na lista invertida.
inv_aux (x:xs) l_inv = inv_aux xs l_inv ++ [x]



-- inverse_list vai inverter uma lista. Se receber [1,2,3] retorna [3,2,1]
-- então ele deve receber uma lista de qualquer tipo - [t] -  e retormar uma lista de qualquer tipo também
-- na criação de uma função, o :: significa que "tem tipo", para passar o tipo dos parâmetros e do retorno
-- o que separa cada parâmetro e o retorno é a seta ->
inverse_list :: [t] -> [t]

-- Se for passado uma lista vazia, retornar a lista
inverse_list [] = []

-- Se for passado uma lista com um número, retornar a lista
inverse_list [x] = [x]

-- Se for passado qualquer outra coisa, chama o inv_aux, passando a lista - l - e uma lista vazia, que será o acumulador para gerar a nova lista invertida
inverse_list l = inv_aux l []


--
-- Outro exemplo de inverter lista:
--

inverse_list2 :: [t] -> [t]
inverse_list2 [] = []
inverse_list2 [x] = [x]
inverse_list2 (x:xs) = inverse_list2 xs ++ [x]
