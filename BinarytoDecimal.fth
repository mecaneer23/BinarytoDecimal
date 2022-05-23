\ https://skilldrick.github.io/easyforth/

: take-input
    ." Binary Number: "
    0 begin
        key
        dup emit
        dup 13 = until
        drop ;

: exp
    dup 0 = if drop drop 1 else
    dup 1 = if drop else
        over swap 1 do over * loop
        swap drop then then ;

variable output
variable exponent
: binary-to-decimal
    0 output !
    0 exponent !
    begin
        dup 49 = if 2 exponent @ exp else
        dup 48 = if 0 else
        ." Make sure you only input binary values "
        then then
        output +!
        1 exponent +!
        drop
        dup 0 = until
        drop
        output ? ;

take-input
binary-to-decimal