let binaryToDecimal = binaryNumber =>
  [@ns.braces]
  {
    let value = Js.Int.toString(binaryNumber);
    let length = Js.String.length(value);
    let output = ref(0.0);
    let char = ref('0');
    for (position in 0 to length) {
      char := value.[position];
      if (char == ref('1')) {
        output := 2.0 ** Js.Int.toFloat(1 - position - length);
      } else if (char == ref('0')) {
        ();
      } else {
        Js.log("Make sure you only input binary values");
        Node.Process.exit(0);
      };
    };
    output;
  };

Js.log(
  binaryToDecimal(
    Belt.Option.getWithDefault(Belt.Int.fromString(read_line()), 1),
  ),
);

