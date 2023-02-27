% erlc BinarytoDecimal.erl; erl -noshell -s BinarytoDecimal start -s init stop
% executable file has .beam extension

-module('BinarytoDecimal').
-import(math,[pow/2]).
-export([if_check/3, binarytoDecimal/1, start/0]).

start() ->
   io:fwrite("Hello, world!\n").

if_check("0", len, pos) -> 0.
if_check("1", len, pos) -> pow(2, len - pos - 1);
if_check(char, len, pos) -> "Make sure you only input binary values";

% while()

binarytoDecimal(binaryNumber) ->
    value = integer_to_list(binaryNumber).
