import System.IO

if_check :: (Char, Int, Int) -> Int
if_check ('0', len, pos) = 0
if_check ('1', len, pos) = (2 ^ (len - pos - 1))
if_check (char, len, pos) = error "Make sure you only input binary values"

binary_to_decimal :: Int -> Int
binary_to_decimal binary_number =
    sum [
        if_check (
            (show binary_number) !! position,
            length (show binary_number),
            position
        ) |
        position <- [0..length (show binary_number) - 1]
    ]

main :: IO ()
main = do
    putStr "Binary Number: "
    hFlush stdout
    input <- getLine
    putStrLn (show (binary_to_decimal (read input :: Int)))