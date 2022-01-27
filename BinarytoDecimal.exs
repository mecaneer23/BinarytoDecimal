#!/usr/bin/env elixir

defmodule BinarytoDecimal do
    def binary_to_decimal(binary_number) do
        value = Integer.to_string(binary_number)
        len = String.length(value)
        Enum.sum(for position <- 0..len-1 do
            char = String.at(value, position)
            cond do
                char == "1" ->
                    :math.pow(2, (len - 1 - position)) |> round
                char == "0" ->
                    0
                true ->
                    IO.puts("Make sure you only input binary values")
                    exit(-1)
            end
        end)
    end
end

IO.puts(BinarytoDecimal.binary_to_decimal(String.to_integer(String.trim(IO.gets("Binary Number: ")))))

