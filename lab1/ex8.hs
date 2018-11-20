absInt n = case (n >= 0) of
            True -> n
            _    -> -n



isItTheAnswer :: String -> Bool
isItTheAnswer a = case a of
                    "Love" -> True
                    _ -> False

not' :: Bool -> Bool
not' a = case a of
        True->False
        False->True

or' :: (Bool, Bool) -> Bool
or' (a,b) = case (a,b) of
            (False, False)->False
            _ -> True

and' :: (Bool, Bool) -> Bool
and' (a, b) = case (a,b) of
                (True, True) -> True
                _ -> False

nand' :: (Bool, Bool) -> Bool
nand' (a, b) = case (a,b) of
                (True, True) -> False
                _ -> True

xor' :: (Bool, Bool) -> Bool
xor' (a,b) = case (a,b) of 
                (True, False) -> True
                (False, True) -> True
                _ -> True