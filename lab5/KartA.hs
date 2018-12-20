import Control.Applicative
--Rewrite using >>, >>=

fun = do
    putStrLn "Podaj Imie: "
    s <- getLine
    putStrLn $ "Witaj " ++ s

fun' = putStrLn "Podaj Imie: " >> getLine >>= \name -> putStrLn ("Witaj " ++ name)


--eval
let eva = foldr (+) 0 ((*) <$> ZipList[1,2,3] <*> ((+1) ZipList[4,5,6]))