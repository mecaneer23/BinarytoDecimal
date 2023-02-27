% erlc BinarytoDecimal.erl; erl -noshell -s BinarytoDecimal start -s init stop
% executable file has .beam extension

-module('BinarytoDecimal').
-export([start/0]).

start() ->
   io:fwrite("Hello, world!\n").

% if_check(c)

% 'BinarytoDecimal'(binaryNumber) ->
%     sum(if_check)
