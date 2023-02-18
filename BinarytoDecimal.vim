function BinarytoDecimal(binaryNumber)
    let value = string(a:binaryNumber)
    let length = strlen(value)
    let output = 0
    let position = 0
    while position < length
        let char = value[position]
        if char ==# "1"
            let output += float2nr(pow(2, length - 1 - position))
            elseif char ==# "0"
                let position += 1
                continue
            else
                echom "Make sure you only input binary values that don't start with 0"
                break
            endif
        let position += 1
    endwhile
    return output
endfunction
