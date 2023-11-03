defmodule Problems.Problem5 do
  def solve do
    Stream.iterate(20, fn x -> x + 20 end)
      |> Enum.find(fn x -> 1..20 |>
                           Enum.all?(fn y -> Math.factor_of?(y, x) end)
                   end)
  end
end
