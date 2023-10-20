defmodule Problems.Problem1 do
  def solve do
    multiple_of_3? = fn x -> rem(x, 3) == 0 end
    multiple_of_5? = fn x -> rem(x, 5) == 0 end

    list1To1000 = 1..999
    Enum.reduce(Enum.filter(list1To1000, fn x -> multiple_of_3?.(x) or multiple_of_5?.(x) end), fn (x, acc) -> x + acc end)
  end
end
