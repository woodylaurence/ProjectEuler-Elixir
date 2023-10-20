defmodule Problems.Problem3 do
  def solve do
    Math.get_factors(600_851_475_143)
      |> Enum.reverse
      |> Enum.find(fn x -> Math.prime?(x) end)
  end
end
