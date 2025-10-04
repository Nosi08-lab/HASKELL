-- HC2 Tasks

-- Task 1: Types
-- 42 :: Int
-- 3.14 :: Fractional a => a (commonly Double)
-- "Haskell" :: String
-- 'Z' :: Char
-- True && False :: Bool

-- Task 2: Functions
add :: Int -> Int -> Int
add x y = x + y

isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

concatStrings :: String -> String -> String
concatStrings s1 s2 = s1 ++ s2

-- Task 3: Immutable Variables
myAge :: Int
myAge = 21

piValue :: Double
piValue = 3.14159

greeting :: String
greeting = "Hello, Haskell!"

isHaskellFun :: Bool
isHaskellFun = True

-- Task 4: Infix ↔ Prefix
-- 5 + 3 == (+) 5 3
-- 10 * 4 == (*) 10 4
-- True && False == (&&) True False
-- (+) 7 2 == 7 + 2
-- (*) 6 5 == 6 * 5
-- (&&) True False == True && False

-- Task 5: Functions
circleArea :: Float -> Float
circleArea r = pi * r^2

maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c = max a (max b c)

-- Task 6: Int vs Integer
smallNumber :: Int
smallNumber = 262

bigNumber :: Integer
bigNumber = 2127

-- Task 7: Boolean Expressions
boolExpr1 :: Bool
boolExpr1 = True && True

boolExpr2 :: Bool
boolExpr2 = False || False

boolExpr3 :: Bool
boolExpr3 = not False

boolExpr4 :: Bool
boolExpr4 = 5 > 10

-- Main program to test everything
main :: IO ()
main = do
    putStrLn "=== Task 2: Function Tests ==="
    print (add 5 7)
    print (isEven 10)
    print (isEven 7)
    print (concatStrings "Hello, " "World!")
    
    putStrLn "\n=== Task 3: Immutable Variables ==="
    print myAge
    print piValue
    print greeting
    print isHaskellFun
    
    putStrLn "\n=== Task 5: Functions ==="
    print (circleArea 5)
    print (maxOfThree 3 7 5)
    
    putStrLn "\n=== Task 6: Int vs Integer ==="
    print smallNumber
    print bigNumber
    print (2^64 :: Integer)
    
    putStrLn "\n=== Task 7: Boolean Expressions ==="
    print boolExpr1
    print boolExpr2
    print boolExpr3
    print boolExpr4
