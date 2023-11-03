defmodule Math do
  def multiple_of?(num, multiple) when multiple > 0 do
    rem(num, multiple) == 0
  end

  def factor_of?(factor, num) when factor > 0 do
    rem(num, factor) == 0
  end

  def get_factors(x, current_factor \\ 1, factors \\ [])
  def get_factors(x, current_factor, factors) do
    cond do
      current_factor > :math.sqrt(x) -> factors |> Enum.sort
      current_factor == :math.sqrt(x) -> factors ++ [current_factor] |> Enum.sort
      Math.factor_of?(current_factor, x) -> get_factors(x, current_factor + 1, factors ++ [current_factor, (x / current_factor) |> trunc])
      true -> get_factors(x, current_factor + 1, factors)
    end
  end

  def prime?(x) do
    case get_factors(x) do
      [1, ^x] -> true
      _ -> false
    end
  end

  def fibonacci() do
    Stream.unfold({0, 1}, fn {x, y} -> {x, {y, x + y}} end)
  end
end
