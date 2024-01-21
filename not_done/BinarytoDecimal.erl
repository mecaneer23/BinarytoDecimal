% erlc BinarytoDecimal.erl; erl -noshell -s BinarytoDecimal start -s init stop
% executable file has .beam extension

-module('BinarytoDecimal').
-import(math,[pow/2]).
-import(lists,[nth/2]).
-export([if_check/3, loop/2, binarytoDecimal/1, start/0]).

start() ->
   {ok, Term} = io:read("Binary Number: "),
   io:print(Term),
   io:format("~p~n", binarytoDecimal(Term)).

if_check("0", Len, pos) -> 0;
if_check("1", Len, pos) -> pow(2, (Len - 1) - pos);
if_check(char, Len, pos) -> "Make sure you only input binary values".

loop(Value, Pos) ->
   Len = length(Value),
   if_check(nth(Pos, Value), Len, Pos),
   if
      Pos /= Len ->
         loop(Value, Pos+1)
   end.

binarytoDecimal(binaryNumber) ->
   loop(binaryNumber, 0).
