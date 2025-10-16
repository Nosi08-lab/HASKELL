import Data.Char (isUpper)

-- HC5T1: Using applyTwice
applyThrice :: (Int -> Int) -> Int -> Int
applyThrice f x = f (f (f x))

-- HC5T2: Filtering Odd Numbers
oddNumbers :: [Int]
oddNumbers = filter odd [1..30]

-- HC5T3: Checking for Uppercase Letters
hasUppercaseWord :: [String] -> Bool
hasUppercaseWord words = any (\w -> not (null w) && isUpper (head w)) words

-- HC5T4: Using Lambda Functions
biggerThan10 :: Int -> Bool
biggerThan10 = \x -> x > 10

-- HC5T5: Partial Application
multiplyByFive :: Int -> Int
multiplyByFive = (*) 5

-- HC5T6: Function Composition
evenSquares :: [Int] -> [Int]
evenSquares = filter even . map (^2)

-- HC5T7: The $ Operator
result :: Int
result = sum $ map (*2) $ filter (>3) [1..10]

-- HC5T8: Point-Free Style
addFive :: Int -> Int
addFive = (+5)

-- HC5T9: Higher-Order Function to Transform a List
transformList :: (a -> a) -> [a] -> [a]
transformList f = map (f . f)

-- HC5T10: Combining Higher-Order Functions
anySquareGreaterThan50 :: [Int] -> Bool
anySquareGreaterThan50 = any (>50) . map (^2)

-- MAIN FUNCTION
main :: IO ()
main = do
    putStrLn "=== HC5T1: Using applyTwice ==="
    print (applyThrice (+1) 5)    -- 8
    print (applyThrice (*2) 2)    -- 16

    putStrLn "\n=== HC5T2: Filtering Odd Numbers ==="
    print oddNumbers

    putStrLn "\n=== HC5T3: Checking for Uppercase Letters ==="
    print (hasUppercaseWord ["apple", "Banana", "cherry"])   -- True
    print (hasUppercaseWord ["apple", "banana", "cherry"])   -- False

    putStrLn "\n=== HC5T4: Using Lambda Functions ==="
    print (biggerThan10 9)     -- False
    print (biggerThan10 15)    -- True

    putStrLn "\n=== HC5T5: Partial Application ==="
    print (multiplyByFive 3)   -- 15
    print (multiplyByFive 10)  -- 50

    putStrLn "\n=== HC5T6: Function Composition ==="
    print (evenSquares [1..10])   -- [4,16,36,64,100]

    putStrLn "\n=== HC5T7: The $ Operator ==="
    print result                  -- 84

    putStrLn "\n=== HC5T8: Point-Free Style ==="
    print (addFive 7)             -- 12

    putStrLn "\n=== HC5T9: Higher-Order Function to Transform a List ==="
    print (transformList (+1) [1,2,3])   -- [3,4,5]
    print (transformList (*2) [1,2,3])   -- [4,8,12]

    putStrLn "\n=== HC5T10: Combining Higher-Order Functions ==="
    print (anySquareGreaterThan50 [3,5,6,8])   -- True
    print (anySquareGreaterThan50 [1,2,4,5])   -- False
