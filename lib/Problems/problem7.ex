defmodule Problems.Problem7 do
  def solve do
    Stream.iterate(1, fn x -> x + 1 end)
      |> Stream.filter(fn x -> Math.prime?(x) end)
      |> Enum.at(10_000)
  end
end
