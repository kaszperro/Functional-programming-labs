not' :: Bool -> Bool
not' True = False
not' False = True

isItTheAnswer :: String -> Bool
isItTheAnswer "Love" = True -- :)
isItTheAnswer _      = False


nand' :: (Bool, Bool) -> Bool
nand' (True, True) = False
nand' _ = True

xor' :: (Bool, Bool) -> Bool
xor' (True, False) = True
xor' (False, True) = True
xor' _  = False