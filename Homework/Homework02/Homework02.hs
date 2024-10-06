
-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- (Use the types presented in the lecture.)

f1 :: Double -> Double -> Double -> Double
f1 x y z = x ** (y/z)

f2:: Double -> Double -> Double -> Double
f2 x y z = sqrt (x/y - z)

f3 :: Bool -> Bool -> [Bool]
f3 x y = [x == True] ++ [y]

f4 :: [Int] -> [Int] -> [Int] -> Bool
f4 x y z = x == (y ++ z)

-- Question 2
-- Why should we define type signatures of functions? How can they help you? How can they help others?

{-
    We define the function signature to precisely establish the sets of values ​​that the function
    will process and what it must return, defining the prototype of the function makes the subsequent
    implementation easier, at least in basiC logical reasoning. They help both ghs to recognize
    compilation errors and ourselves and other developers to better understand its functionality.
-}

-- Question 3
-- Why should you define type signatures for variables? How can they help you?

{-
    my answer:
    We use a type signature for variables to tell the compiler that we are dealing with a certain
    parameterless function (variable) that deals with exactly that certain set of values,
    in order to recognize errors in the code in the future and avoid ambiguity.

    added by the solutions:
    In Haskell we usually declare variables inside functions. We mostly do no use type signatures for them. But in the
    beginning when you are getting errors it is helpful to add the signatures to all of your variables because the error
    from the compiler can become more understandable if you do this.
-}

-- Question 4
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.

{-
    my answer:
    There are functions like fromIntegral to convert between Int and Double or pack/unpack to convert between
    ByteString and String.

    added by the solutions:
    We can use the function `show` to transform almost any type into String (we'll learn specifically which types
    in the type classes lesson):
-}

-- (added by the solutions)
v1 :: Float  
v1 = 1.23

v2 :: String
v2 = show v1

-- You can also convert a `Double` to an `Int` with the round function (although, you're loosing information).
v4 = 3.1415 :: Double
v5 = round v4 :: Int

-- Question 5
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?

{-
    yes I can, and we've seen this with the word and line functions which tokenize a string
    into a list of string (i.e. a list of characters)
-}

matrix = [[1..5],[6..10],[11..15]] :: [[Int]]

list = matrix !! 1

number = list !! 4

x = matrix !! 1 !! 4









