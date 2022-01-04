// fpc BinarytoDecimal.pas
program BinaryDecimal;

uses
    sysutils, math;

function bad_argument(): integer;
begin
    writeln('Make sure you only input binary values');
    bad_argument := -1;
end;


function BinarytoDecimal(binaryNumber: longint): longint;
var
    value: string;
    len: longint;
    output: longint;
    chr: char;
    position: longint;
begin
    value := IntToStr(binaryNumber);
    len := Length(value);
    output := 0;
    for position := 1 to len do
    begin
        chr := value[position];
        if (chr = '1') then
            output := output + (2**(len - position))
        else if (chr = '0') then
            continue
        else
            exit(bad_argument());
    end;
    BinarytoDecimal := output;
end;


var num: longint;
begin
    write('Binary Number: ');
    readln(num);
    writeln(BinarytoDecimal(num));
end.