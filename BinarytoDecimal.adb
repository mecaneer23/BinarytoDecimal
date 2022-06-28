-- gnatmake BinarytoDecimal.adb; BinarytoDecimal
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings; use Ada.Strings;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with GNAT.OS_Lib;

procedure BinarytoDecimal is
    num: Integer;
    dec: Integer;
    function binary_to_decimal (binary_number: Integer) return Integer is
        value: Ada.Strings.Unbounded.Unbounded_String;
        len: Integer;
        output: Integer;
        char: Character;
    begin
        value := Ada.Strings.Unbounded.To_Unbounded_String(binary_number'image);
        len := Ada.Strings.Unbounded.Length(value);
        output := 0;
        for position in 2 .. len loop
            char := Ada.Strings.Unbounded.Element(value, position);
            if char = '1' then
                output := output + 2 ** (len - position);
            elsif char = '0' then
                null;
            else
                Put_Line ("Make sure you only input binary values");
                GNAT.OS_Lib.OS_Exit (0);
            end if;
        end loop;
		return output;
    end binary_to_decimal;
begin
    Put ("Binary Number: ");
    Ada.Integer_Text_IO.Get(num);
    dec := binary_to_decimal (num);
    Put_Line (dec'image);
end BinarytoDecimal;
