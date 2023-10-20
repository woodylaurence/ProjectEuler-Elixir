require Integer

defmodule Problems.Problem2 do
  def solve do
    Math.fibonacci
      |> Enum.take_while(fn x -> x < 4_000_000 end)
      |> Enum.filter(fn x -> Integer.is_even(x) end)
      |> Enum.sum()
  end
end
