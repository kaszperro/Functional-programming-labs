map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (x:xs) = f x : map' f xs

doubleElems = map' (\x->x*2) 
sqrElems = map' (\x->sqrt(x))


evalFuncListAt :: a -> [a -> b] -> [b]
evalFuncListAt x = map ($x)