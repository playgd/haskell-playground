-- Usando a expressao `if` (sim, em Haskell, `if` é uma expressão que retorna valores:

if1 = [if 5 > 3 then "Woo" else "Boo", if 'a' > 'b' then "Foo" else "Bar"]
if2 = 4 * (if 10 > 5 then 10 else 0) + 2

-- Agora com let
-- let funciona como o "where", com a diferença de que vocẽ define as variáveis / funções antes de utilizar os valores. Com "where", vocẽ define os valores das variáveis / funções após a utilização.

let1 = 4 * (let a = 9 in a + 1) + 2


-- Podemos usar let para criar funções de escopo local:

let2 = [let square x = x * x in (square 5, square 3, square 2)]

-- Podemos separar variáveis na mesma linha com ponto e vírgula:

let3 = (let a = 100; b = 200; c = 300 in a*b*c, let foo = "Hey "; bar = "there!" in foo ++ bar)


-- Usando let com pattern matching:

let4 = (let (a, b, c) = (1, 2, 3) in a + b + c) * 100

-- Podemos usar ainda em compreensão de listas (list comprehensions):

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]

-- Incluímos o let dentro da compreensão de listas como predicado, mas
-- não com a intenção de filtrar a lista, mas sim para apenas dar nomes
-- aos elementos. Nomes definidos num let dentro de uma compreensão de
-- listas são visíveis à função a que pertence (o que antecede o |) e
-- a todos os predicados e seções que seguem à associação.



-- Então simplesmente podemos fazer nossa funão retornar o IMC apenas
-- de pessoas gordas:

calcBmis2 :: (RealFloat a) => [(a, a)] -> [a]
calcBmis2 xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi >= 25.0]

-- só não podemos usar o nome "bmi" em "(w, h) <- xs" porque é executado
-- antes da definição do let.
