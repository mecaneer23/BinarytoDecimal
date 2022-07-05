\ https://skilldrick.github.io/easyforth/
\ gforth BinarytoDecimal.fth

: take-input
    ." Binary Number: "
    0 begin
        key
        dup emit
        dup 13 = until
        drop cr ;

: exp
    dup 0 = if drop drop 1 else
    dup 1 = if drop else
        over swap 1 do over * loop
        swap drop then then ;

: binary-to-decimal
    0 0 rot
    begin
        dup 49 = if drop 2 over exp else
        48 = if 0 else
        ." Make sure you only input binary values " cr bye
        then then
        rot + swap 1 +
        rot
        dup 0 = until
        drop drop ;

take-input
binary-to-decimal .
cr bye