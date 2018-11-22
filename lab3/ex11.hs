concat' :: [[a]] -> [a]
concat' []     = []
concat' (x:xs) = x ++ concat' xs

concat'' xss = [x | xs <- xss, x<-xs] 

concat''' xss = foldr (\xs acc -> xs++acc ) [] xss