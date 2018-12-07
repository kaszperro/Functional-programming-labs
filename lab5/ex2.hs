actSeq = putChar 'A' >> putChar 'G' >> putChar 'H' >>  putChar '\n'


doActSeq = do
    putChar 'A'
    putChar 'G'
    putChar 'H'
    putChar '\n'


echo1 = getLine >>= putStrLn

doEcho1 = do
    line <- getLine
    putStrLn line


echo2 = getLine >>= \line -> putStrLn $ line ++ "!"

doEcho2 = do
    line <- getLine
    putStrLn $ line ++ "!"


echo3 :: IO ()
echo3 =  getLine >>= \l1 -> getLine >>= \l2 -> putStrLn $ l1 ++ l2

dialog :: IO ()
dialog = putStr "What is your happy number? "
            >> getLine
            >>= \n -> let num = read n :: Int in
                    if num == 7
                    then putStrLn "Ah, lucky 7!"
                    else if odd num
                        then putStrLn "Odd number! That's most people's choice..."
                        else putStrLn "Hm, even number? Unusual!"



echo4 = do 
    l1 <- getLine
    l2 <- getLine
    putStrLn $ l1 ++ l2

dialog2 = do
    putStr "What is your happy number? "
    n <- getLine
    let num = read n :: Int in
        if num == 7
            then putStrLn "Agh, licky 7!"
            else if odd num
                then putStrLn "Odd"
                else putStr "even"



twoQuestions :: IO ()
twoQuestions = do
    putStr "What is your name? "
    name <- getLine
    putStr "How old are you? "
    age <- getLine
    print (name,age)


twoQuestions2 :: IO ()
twoQuestions2 = putStr "What is your name" >> getLine >>= \name -> putStr "Hwo old are you " >> getLine >>= \age -> print(name, age)


