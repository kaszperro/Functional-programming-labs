qSort :: Ord a => [a] -> [a]
qSort []     = []
qSort (x:xs) = qSort (leftPart xs) ++ [x] ++ qSort (rightPart xs)
 where
   leftPart  xs = filter (<= x) xs
   rightPart xs = filter (>x) xs


merge :: Ord a => [a] -> [a] -> [a]
merge [] a = a
merge a [] = a
merge (a:as) (b:bs) | a < b = a : merge as (b:bs)
                    | otherwise = b : merge (a:as) bs


mSort :: Ord a => [a] -> [a]
mSort [] = []
mSort [x] = [x]
mSort xs = merge (mSort first) (mSort second)
            where   mid = (length xs) `div` 2
                    first = take mid xs
                    second = drop mid xs
 

insert :: Ord a => [a] -> a -> [a]
insert [] a = [a]
insert (x:xs) a | a < x = a : x : xs
                | otherwise = x : insert xs a

iSort :: Ord a => [a] -> [a]
iSort [] = []
iSort [a] = [a]
iSort (x:xs) = insert (iSort xs) x


concat' :: [[a]] -> [a]
concat' [xs] = [x | x <- xs]


concat'' :: [[a]] -> [a]
concat'' [] = []
concat'' ([]:xss) = concat'' xss
concat'' ((x:xs):xss) = x : concat'' (xs: xss)
