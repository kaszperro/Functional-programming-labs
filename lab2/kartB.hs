threePlus_ = (+) 3

uncurry' :: (a -> b -> c) -> (a, b) -> c
uncurry' f (a,b) = f  a b


selectEven :: (Integral a) => [a] -> [a] 
selectEven [] = []
selectEven (x:xs) | x `mod` 2 == 0 = x: selectEven xs
                    | otherwise = selectEven xs