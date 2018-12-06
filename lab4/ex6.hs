class Mappable t where
    fMap :: (a -> b) -> t a -> t b
  
data Vec3D a = Vec3D {x::a, y::a, z::a} deriving Show

instance Mappable Vec3D where
    fMap f (Vec3D x y z) = Vec3D (f x) (f y) (f z)


newtype Pair a = Pair (a,a) deriving Show

instance Mappable Pair where
    fMap f (Pair (x,y)) = Pair (f x, f y)