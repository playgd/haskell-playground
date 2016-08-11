-- Tuplas são valores entre parênteses. É como se fosse um array com vários tipos de dados. (1, "Nome", 10, True)

func :: (Int, Int) -> (Int, Int) -> (Int, Int)
func (a, b) (c, d) = (a + c, b + d)
