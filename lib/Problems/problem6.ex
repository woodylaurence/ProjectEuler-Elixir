defmodule Problems.Problem6 do
  def solve do
    (1..100 |> Enum.sum) * (1..100 |> Enum.sum) - Enum.reduce(1..100, fn (x, acc) -> acc + x * x end)
  end
end
