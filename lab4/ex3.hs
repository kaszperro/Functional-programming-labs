data BinIntTree = EmptyIntBT |
                  IntNodeBT Int BinIntTree BinIntTree


sumBinIntTree :: BinIntTree -> Int
sumBinIntTree EmptyIntBT = 0
sumBinIntTree (IntNodeBT n lt rt) = n + sumBinIntTree lt + sumBinIntTree rt


data BinTree a = EmptyBT |
                 NodeBT a (BinTree a) (BinTree a)

sumBinTree :: (Num a) => BinTree a -> a
sumBinTree EmptyBT = 0
sumBinTree (NodeBT n lt rt) = n + sumBinTree lt + sumBinTree rt



data Expr a = Lit a | -- literal/value a, e.g. Lit 2 = 2
              Add (Expr a) (Expr a)

eval :: Num a => Expr a -> a
eval (Lit n) = n
eval (Add e1 e2) = eval e1 + eval e2

show' :: Show a => Expr a -> String
show' (Lit n) = show n
show' (Add e1 e2) = "(" ++ show' e1 ++ "+" ++ show' e2 ++ ")"


depthOfBT :: BinTree a -> Int -- głębokość drzewa binarnego
depthOfBT EmptyBT = 0
depthOfBT (NodeBT n lt rt) = 1 + max (depthOfBT lt)  (depthOfBT rt)

--let myTree = NodeBT 1 (NodeBT 2 EmptyBT EmptyBT) (NodeBT 3 EmptyBT (NodeBT 3 EmptyBT EmptyBT))
--depthOfBT myTree

preorderBT :: BinTree a -> [a]
preorderBT EmptyBT = []
preorderBT (NodeBT n lt rt) = [n] ++ preorderBT lt ++ preorderBT rt

inorderBT :: BinTree a -> [a]
inorderBT EmptyBT = []
inorderBT (NodeBT n lt rt) =  inorderBT lt ++ [n] ++ inorderBT rt 

postorderBT :: BinTree a -> [a]
postorderBT EmptyBT = []
postorderBT (NodeBT n lt rt) =  postorderBT lt ++  postorderBT rt ++ [n] 


mapBT :: (a -> b) -> BinTree a -> BinTree b -- funkcja map dla drzewa binarnego
mapBT f EmptyBT = EmptyBT
mapBT f (NodeBT n lt rt) = NodeBT (f n) (mapBT f lt) (mapBT f rt)


insert :: Ord a => a -> BinTree a -> BinTree a -- insert element into BinTree
insert num EmptyBT = NodeBT num EmptyBT EmptyBT
insert num (NodeBT n lt rt) | num < n =  NodeBT n (insert num lt) rt
                           | num > n = NodeBT n lt (insert num rt)
                           | otherwise = NodeBT n lt rt


                           