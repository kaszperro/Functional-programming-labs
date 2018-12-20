{-# LANGUAGE InstanceSigs #-}
newtype Box a = MkBox a deriving Show

instance Functor Box where
    fmap f (MkBox x) = MkBox (f x)

instance Applicative Box where
  pure = MkBox
  (MkBox f) <*> w = fmap f w



newtype MyTriple a = MyTriple (a,a,a) deriving Show

instance Functor MyTriple where
    fmap f (MyTriple (x, y, z)) = MyTriple (f x, f y, f z)
  
instance Applicative MyTriple where
    pure a = MyTriple (a,a,a)
    (MyTriple (f, g, h)) <*> MyTriple (x, y, z) = MyTriple (f x, g y, h z)
  
--pure (+1) <*> MyTriple (1,2,3)