BTW HAI 1.4

BTW HOW IZ I BINARYTODECIMAL YR BINARYNUMBER
BTW     MAEK BINARYNUMBER A YARN
BTW     I HAS A VALUE ITZ BINARYNUMBER
BTW     I HAS A LENGTH ITZ VALUE'Z LEN
BTW     I HAS A OUTPUT ITZ 0
BTW     I HAS A CHAR ITZ "0"
BTW     IM IN YR CYCLE UPPIN YR POSITION TIL BOTH SAEM POSITION AN LENGTH
BTW         BTW CHAR R VALUE[POSITION] BTW this doesn't work
BTW         BOTH SAEM CHAR AN "1", O RLY?
BTW             YA RLY
BTW                 OUTPUT BTW this doesn't work
BTW             MEBBE BOTH SAEM CHAR AN "0"
BTW                 BTW
BTW             NO WAI
BTW                 FOUND YR "Make sure you only input binary values"
BTW         OIC
BTW     IM OUTTA YR CYCLE
BTW     FOUND YR OUTPUT
BTW IF U SAY SO

BTW CAN HAS STDIO?
BTW VISIBLE "Binary Number: "!
BTW I HAS A NUM
BTW GIMMEH NUM
BTW MAEK NUM A NUMBR
BTW VISIBLE I IZ BINARYTODECIMAL YR NUM MKAY
BTW KTHXBYE


HAI 1.4

HOW IZ I BINARYTODECIMAL YR BINARYNUMBER
    I HAS A VALUE ITZ BINARYNUMBER
    I HAS A LENGTH ITZ LEN(VALUE)
    I HAS A OUTPUT ITZ 0
    I HAS A POSITION
    IM IN YR CYCLE UPPIN YR POSITION TIL BOTH SAEM POSITION AN LENGTH
        I HAS A CHR ITZ VALUE[POSITION]
        BOTH SAEM CHR AN "1", O RLY?
            YA RLY
                OUTPUT IS NOW OUTPUT + (2 ^ (LENGTH - 1 - POSITION))
            MEBBE BOTH SAEM CHR AN "0"
                BTW
            NO WAI
                VISIBLE "Make sure you only input binary values"
                KTHXBYE
        OIC
    IM OUTTA YR CYCLE
    FOUND YR OUTPUT
IF U SAY SO

HAI BINARYTODECIMAL
    VISIBLE "Binary Number: "!
    I HAS A NUM
    GIMMEH NUM
    MAEK NUM A NUMBR
    VISIBLE I IZ BINARYTODECIMAL YR NUM MKAY
KTHXBYE
