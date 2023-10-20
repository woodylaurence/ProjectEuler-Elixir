defmodule Problems.Problem1 do
  def solve do
    list1To100 = create_array_of_1_to_x(999)
    sum_multiples_of_3_or_5(list1To100, 0)
  end

  def create_array_of_1_to_x(_x, _current_array \\ [])

  def create_array_of_1_to_x(x, current_array) when length(current_array) < x do
    create_array_of_1_to_x(x, (current_array ++ [length(current_array) + 1]))
  end

  def create_array_of_1_to_x(_, current_array) do
    current_array
  end

  def sum_multiples_of_3_or_5([head | tail], accumulator) do
    multiple_of_3? = fn x -> rem(x, 3) == 0 end
    multiple_of_5? = fn x -> rem(x, 5) == 0 end

    cond do
      multiple_of_3?.(head) ->  sum_multiples_of_3_or_5(tail, head + accumulator)
      multiple_of_5?.(head) -> sum_multiples_of_3_or_5(tail, head + accumulator)
      true -> sum_multiples_of_3_or_5(tail, accumulator)
    end
  end

  def sum_multiples_of_3_or_5([], accumulator) do
    accumulator
  end

end
