--create inpFunc
inpFunc :: Int -> Int -> [Int]
inpFunc a b = [a..b] 

--Define applicatorFunc
applicatorFunc :: (Int -> Int -> [Int]) -> Char -> Int -> Int -> Double
applicatorFunc fun s a b
        | s == 's' = fromIntegral (sum nums)
        | otherwise = fromIntegral (sum nums)/ fromIntegral b
        where nums = fun a b  

main = do
    putStrLn "Enter the start number (a):"
    aInput <- getLine
    putStrLn "Enter the end number (b):"
    bInput <- getLine
    putStrLn "Enter 's' for sum or any other character for average:"
    sInput <- getLine
    let a = read aInput :: Int
        b = read bInput :: Int
        s = if null sInput then ' ' else head sInput
    let result = applicatorFunc inpFunc s a b--Call applicatorFunc with inpFunc and 'a' as args
    putStrLn("sum = " ++ show(result))