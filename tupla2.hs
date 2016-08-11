nomes :: (String, String, String)
nomes = ("Marcos", "Geeksbr", "Haskell")

select_first (x, _, _) = x
select_second (_, y, _) = y
select_thirdy (_, _, z) = z
