-- Todas as funções em Haskell recebem somente um parâmetro. Ao utilizar um
-- único parâmetro para função, mas ela receber mais de um, então uma nova
-- função é retornada. Isso se chama "currying" e
-- "partially applied function", pois a função é aplicada parcialmente.

twoDivTen = 2 / 10

-- A função (/) acima é uma função `infix`, pois ela é usada "entre" os seus parâmetros. Podemos usá-la como uma função parcial, passando apenas um parâmetro, e depois passar o próximo:

divByTen = (/10)

-- Usando parênteses e passando um único parâmetro, a função `infix`
-- cria  uma função parcial que espera o outro parâmetro. No caso, o
-- próximo parâmetro passado vai tomar o lugar do que seria o primeiro
-- parâmetro passado, já que o 10 foi passado APÓS a função:

twoHundredDivTen = divByTen 200

-- O retorno da função acima será 20, pois 200/10 = 20.
-- Podemos usar a primeira variável também:

divTenBy = (10/)

-- Agora, o segundo parâmetro será preenchido quando usarmos a função
-- acima:

tenDivFive = divTenBy 5

-- O resultado da função acima será 2, pois 10/5 = 2
