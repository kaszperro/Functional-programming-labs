data Foo a = MkFoo { value :: a, name :: String }

instance Show a => Show (Foo a) where
    show MkFoo{ value=v, name = n } = "Name: " ++ n ++ " with " ++ show v



data Tree a = Node [Tree a] a | Leaf a

maxValue :: Ord a => Tree a -> a
maxValue (Leaf a) = a
maxValue (Node [tr] a) = max a (maxValue tr)
maxValue (Node (tr:trs) a) = max a (max (maxValue tr) (maxValue (Node trs a)))
  


data XDD a = C1 | C2(a,a)
instance Eq a => Eq (XDD a) where
    (==) C1 C1 = True
    (==) C1 (C2 _) = False
    (==) (C2 _) C1 = False
    (==) (C2(a,b)) (C2(c,d)) = (a == c && b ==d)