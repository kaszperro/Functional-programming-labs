f1 x = let y = sqrt x in 2*y^5*(y+1)

f1' x  = (\y-> 2*y^5*(y+1) ) (sqrt x)