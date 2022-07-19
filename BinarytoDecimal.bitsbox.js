function BinaryToDecimal(binaryNumber) {
	var value = binaryNumber.toString(10);
	var length = value.length;
	var output = 0;
	for (position = 0; position < length; position++) {
		char = value.charAt(position);
		if (char == '1') {
			output += Math.pow(2, length - 1 - position);
		} else if (char == '0') {
			continue;
		} else {
			return "Make sure you only input binary values";
		}
	}
	return output;
}
function add0() {
  NUM += "0"
  myText.change(NUM)
}
function add1() {
  NUM += "1"
  myText.change(NUM)
}
function printer() {
	myText.change(BinaryToDecimal(NUM))
  NUM = ""
}
function cls() {
  NUM = ""
  myText.change(NUM)
}
function backspace() {
	NUM = NUM.slice(0, -1)
  myText.change(NUM)
}

// "periwinkle" - in color list
// "#c6cfe6" - hex
FILL_COLOR = 'lightblue'
OUTPUT_COLOR = 'gray'
BUTTON_CIRCLE = 'gray'
BUTTON_TEXT = 'lightblue'

fill(FILL_COLOR)
NUM = ""
myText = text(NUM, CENTER, OUTPUT_COLOR)
zero = circle(180, 300, 75, BUTTON_CIRCLE)
one = circle(380, 300, 75, BUTTON_CIRCLE)
enter = circle(580, 300, 75, BUTTON_CIRCLE)
clear = circle(280, 700, 75, BUTTON_CIRCLE)
bksp = circle(480, 700, 75, BUTTON_CIRCLE)
text(0, 150, 330, 100, BUTTON_TEXT)
text(1, 350, 330, 100, BUTTON_TEXT)
text("Enter", 522, 315, 50, BUTTON_TEXT)
text("Clear", 222, 718, 50, BUTTON_TEXT)
text("Bksp", 428, 718, 50, BUTTON_TEXT)
zero.tap = add0
one.tap = add1
enter.tap = printer
clear.tap = cls
bksp.tap = backspace
