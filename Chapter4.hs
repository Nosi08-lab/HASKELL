-- HC4T1 to HC4T8
-- Full Haskell Program with main function

module Main where

-- HC4T1 - Define weatherReport Function
weatherReport :: String -> String
weatherReport "sunny"  = "It's a bright and beautiful day!"
weatherReport "rainy"  = "Don't forget your umbrella!"
weatherReport "cloudy" = "A bit gloomy, but no rain yet!"
weatherReport _        = "Weather unknown"

-- HC4T2 - Define dayType Function
dayType :: String -> String
dayType "Saturday" = "It's a weekend!"
dayType "Sunday"   = "It's a weekend!"
dayType "Monday"   = "It's a weekday."
dayType "Tuesday"  = "It's a weekday."
dayType "Wednesday"= "It's a weekday."
dayType "Thursday" = "It's a weekday."
dayType "Friday"   = "It's a weekday."
dayType _          = "Invalid day"

-- HC4T3 - Define gradeComment Function
gradeComment :: Int -> String
gradeComment grade
  | grade >= 90 && grade <= 100 = "Excellent!"
  | grade >= 70 && grade <= 89  = "Good job!"
  | grade >= 50 && grade <= 69  = "You passed."
  | grade >= 0  && grade <= 49  = "Better luck next time."
  | otherwise                   = "Invalid grade"

-- HC4T4 - specialBirthday using pattern matching
specialBirthday :: Int -> String
specialBirthday 1  = "First birthdays are so special!"
specialBirthday 18 = "You're officially an adult!"
specialBirthday 21 = "Time to celebrate your 21st!"
specialBirthday 50 = "Half a century old — congrats!"
specialBirthday _  = "Just another birthday!"

-- HC4T5 - Include the age in the message
specialBirthdayV2 :: Int -> String
specialBirthdayV2 1  = "First birthdays are so special!"
specialBirthdayV2 18 = "You're officially an adult!"
specialBirthdayV2 21 = "Time to celebrate your 21st!"
specialBirthdayV2 50 = "Half a century old — congrats!"
specialBirthdayV2 age = "You are " ++ show age ++ " years old — have a great day!"

-- HC4T6 - whatsInsideThisList
whatsInsideThisList :: [Int] -> String
whatsInsideThisList [] = "The list is empty."
whatsInsideThisList [x] = "The list has one element: " ++ show x
whatsInsideThisList [x, y] = "The list has two elements: " ++ show x ++ " and " ++ show y
whatsInsideThisList (x:y:_) = "The list has many elements, starting with " ++ show x ++ " and " ++ show y

-- HC4T7 - firstAndThird
firstAndThird :: [a] -> [a]
firstAndThird (x:_:z:_) = [x, z]
firstAndThird _ = []

-- HC4T8 - describeTuple
describeTuple :: (String, Int, Bool) -> String
describeTuple (name, age, isStudent) =
  name ++ " is " ++ show age ++ " years old and student status is " ++ show isStudent

-- MAIN FUNCTION
main :: IO ()
main = do
  putStrLn "=== HC4T1 - weatherReport ==="
  putStrLn (weatherReport "sunny")
  putStrLn (weatherReport "rainy")
  putStrLn (weatherReport "stormy")
  putStrLn ""

  putStrLn "=== HC4T2 - dayType ==="
  putStrLn (dayType "Saturday")
  putStrLn (dayType "Wednesday")
  putStrLn (dayType "Holiday")
  putStrLn ""

  putStrLn "=== HC4T3 - gradeComment ==="
  putStrLn (gradeComment 95)
  putStrLn (gradeComment 75)
  putStrLn (gradeComment 55)
  putStrLn (gradeComment 40)
  putStrLn (gradeComment 110)
  putStrLn ""

  putStrLn "=== HC4T4 & HC4T5 - specialBirthday ==="
  putStrLn (specialBirthday 21)
  putStrLn (specialBirthday 10)
  putStrLn (specialBirthdayV2 30)
  putStrLn ""

  putStrLn "=== HC4T6 - whatsInsideThisList ==="
  putStrLn (whatsInsideThisList [])
  putStrLn (whatsInsideThisList [7])
  putStrLn (whatsInsideThisList [1,2])
  putStrLn (whatsInsideThisList [1,2,3,4])
  putStrLn ""

  putStrLn "=== HC4T7 - firstAndThird ==="
  print (firstAndThird [10,20,30,40])
  print (firstAndThird [5])
  putStrLn ""

  putStrLn "=== HC4T8 - describeTuple ==="
  putStrLn (describeTuple ("Alice", 22, True))
  putStrLn (describeTuple ("Bob", 30, False))
