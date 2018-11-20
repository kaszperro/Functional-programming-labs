{-# LANGUAGE NoMonomorphismRestriction #-}

sqr x = x^2
funcFactory n = case n of
    1 -> id
    2 -> sqr
    3 -> (^3)
    4 -> \x -> x^4
    5 -> intFunc
    _ -> const n
    where
      intFunc x = x^5



--e^x n x
--expApproxUpTo :: Int -> Double -> Double  -> Double
eUpTo :: Double -> Double -> Double
eUpTo n x = loop n 0 x 1 1
  where loop n k x xsq kprod =  if k > n then 0
                                else xsq/kprod + loop n (k+1) x (xsq*x) (kprod*(k+1))





dfr :: (Double -> Double) -> Double -> (Double -> Double)
dfr f h = \x -> (f(x+h) - f(x))/h


dfc :: (Double -> Double) -> Double -> (Double -> Double)
dfc f h = \x -> (f(x+h) - f(x-h))/(2*h)


d2f :: (Double -> Double) -> Double -> (Double -> Double)
d2f f h = dfc (dfc f h) h

sinDfr = dfr sin 1e-8
sinDfc = dfr sin 1e-8

sinD2f = d2f sin 1e-8