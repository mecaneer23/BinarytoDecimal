! gfortran BinarytoDecimal.f90 -o BinarytoDecimal

program BinaryDecimal
    implicit none
    integer num
    write(*,'(a,$)') "Binary Number: "
    read(*,*) num
    write(*, "(I0)") binary_to_decimal(num)
contains

integer function binary_to_decimal(binaryNumber)
    integer, intent(in) :: binaryNumber
    character(len = 8) :: value
    integer :: length = len(value)
    integer :: output = 0
    character(len = 1) :: char
    integer :: position = 0
    write(value, "(I8)") binaryNumber
    do position = 1, length
        char = value(position:position+1)
        if (char == '1') then
            output = output + (2.0**(length - position))
        else if (char == '0' .or. char == " ") then
            cycle
        else
            stop 'Make sure you only input binary values'
        end if
    end do
    binary_to_decimal = output
end function

end program BinaryDecimal
