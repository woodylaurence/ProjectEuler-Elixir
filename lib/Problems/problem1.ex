defmodule Problems.Problem1 do
  def solve do
  1..999
    |> Enum.filter(fn x -> Math.multiple_of?(x, 3) or Math.multiple_of?(x, 5) end)
    |> Enum.sum()
  end
end
