data MyInt = MkMyInt Int

instance Eq MyInt where
    (==) (MkMyInt i1) (MkMyInt i2) = i1 == i2


instance Ord MyInt where
    (<=) (MkMyInt i1) (MkMyInt i2) = i1 <= i2


instance Num MyInt where
    (+) (MkMyInt i1) (MkMyInt i2) = MkMyInt (i1 + i2)
    (-) (MkMyInt i1) (MkMyInt i2) = MkMyInt (i1 - i2)
    (*) (MkMyInt i1) (MkMyInt i2) = MkMyInt (i1 * i2)
    negate (MkMyInt i)            = MkMyInt (negate i)
    abs (MkMyInt i)               = MkMyInt (abs i)
    signum (MkMyInt i)            = MkMyInt (signum i)
    fromInteger int               = MkMyInt (fromIntegral int)


instance Show MyInt where
    show (MkMyInt i) = "MkMyInt " ++ show i



data Fraction a = Fraction {num::a, denom::a} -- num - numerator, denom - denominator

fra :: Int ->  Int -> Fraction Int
fra a b = Fraction {num=a, denom=b}


instance Show a => Show (Fraction a) where
    show (Fraction a b) = "Fraction, num: " ++ show a ++ " denum: " ++ show b
