-- Variáveis anônimas são representadas por underline

andy :: Bool -> Bool -> Bool
andy False _ = False
andy _ False = False
andy True True = True
