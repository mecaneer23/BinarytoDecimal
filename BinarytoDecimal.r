BinaryToDecimal <- function(binaryNumber) {
	value = toString(binaryNumber)
	output = 0
	for (position in 1:nchar(value)) {
		char = substr(value, position, position)
		if (char == "1") {
			output = output + (2 ^ (nchar(value) - 1 - position))
		} else if (char == "0") {
			
		} else {
			cat("Make sure you only input binary values", "\n")
			return(-1)
		}
	}
	return(output * 2)
}

cat("Binary Number: ")
num <- readLines("stdin",n=1)
iserror = BinaryToDecimal(num)
if (iserror != -1) {
	cat(iserror, "\n")
}