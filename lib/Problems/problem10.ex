defmodule Problems.Problem10 do
  def solve do
    Math.primes
      |> Stream.take_while(fn x -> x < 2_000_000 end)
      |> Enum.sum
  end
end
