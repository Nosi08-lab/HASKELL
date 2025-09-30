import Data.List (sortBy)

-- HC1T1 - Task 1: Function Composition
double :: Int -> Int
double x = x * 2

increment :: Int -> Int
increment x = x + 1

doubleThenIncrement :: Int -> Int
doubleThenIncrement = increment . double

-- HC1T2 - Task 2: Pure Function Example
circleArea :: Floating a => a -> a
circleArea r = pi * r * r

-- HC1T3 - Task 3: Checking if a Number is Greater than 18
greaterThan18 :: Int -> Bool
greaterThan18 x = x > 18

-- HC1T4 - Task 4: Composing a Function to Process Player Data
extractPlayers :: [(String, Int)] -> [String]
extractPlayers players = map fst players

sortByScore :: [(String, Int)] -> [(String, Int)]
sortByScore = sortBy (\(_, s1) (_, s2) -> compare s2 s1)

topThree :: [(String, Int)] -> [(String, Int)]
topThree = take 3

getTopThreePlayers :: [(String, Int)] -> [String]
getTopThreePlayers = extractPlayers . topThree . sortByScore

-- HC1T5 - Task 5: Laziness in Haskell
infiniteNumbers :: [Int]
infiniteNumbers = [1..]

firstN :: Int -> [Int]
firstN n = take n infiniteNumbers

-- HC1T6 - Task 6: Using Type Signatures
addNumbers :: Int -> Int -> Int
addNumbers x y = x + y

-- HC1T7 - Task 7: Converting Fahrenheit to Celsius
fToC :: Floating a => a -> a
fToC f = (f - 32) * 5 / 9

-- HC1T8 - Task 8: Higher-Order Functions
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- Main function to demonstrate tasks
main :: IO ()
main = do
    putStrLn "HC1T1 - doubleThenIncrement 5:"
    print (doubleThenIncrement 5)  -- Expected: 11

    putStrLn "\nHC1T2 - circleArea 3.0:"
    print (circleArea 3.0)  -- Expected: ~28.27

    putStrLn "\nHC1T3 - greaterThan18 20:"
    print (greaterThan18 20)  -- Expected: True

    putStrLn "\nHC1T4 - getTopThreePlayers:"
    let players = [("Alice", 50), ("Bob", 75), ("Carol", 65), ("Dave", 90), ("Eve", 40)]
    print (getTopThreePlayers players)  -- Expected: ["Dave","Bob","Carol"]

    putStrLn "\nHC1T5 - first 10 infinite numbers:"
    print (firstN 10)  -- Expected: [1..10]

    putStrLn "\nHC1T6 - addNumbers 7 8:"
    print (addNumbers 7 8)  -- Expected: 15

    putStrLn "\nHC1T7 - fToC 98.6:"
    print (fToC 98.6)  -- Expected: ~37.0

    putStrLn "\nHC1T8 - applyTwice (+3) 4:"
    print (applyTwice (+3) 4)  -- Expected: 10
