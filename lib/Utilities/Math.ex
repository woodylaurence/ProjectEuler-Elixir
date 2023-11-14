defmodule Math do
  def multiple_of?(num, multiple) when multiple > 0 do
    rem(num, multiple) == 0
  end

  def factor_of?(factor, num) when factor > 0 do
    rem(num, factor) == 0
  end

  def get_factors(x, current_factor \\ 1, factors \\ [])
  def get_factors(x, current_factor, factors) when current_factor * current_factor > x do
    factors |> Enum.sort
  end

  def get_factors(x, current_factor, factors) when current_factor * current_factor == x do
    factors ++ [current_factor] |> Enum.sort
  end

  def get_factors(x, current_factor, factors) do
    cond do
      Math.factor_of?(current_factor, x) -> get_factors(x, current_factor + 1, factors ++ [current_factor, div(x, current_factor)])
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

  def primes do
    Stream.iterate(2, fn x -> next_closest_prime(x) end)
  end

  def next_closest_prime(x) when is_integer(x) do
    cond do
      prime?(x + 1) -> x + 1
      true -> next_closest_prime(x + 1)
    end
  end

  def sqrt_perfect(x) when is_integer(x) do
    case :math.sqrt(x) do
      y when y == (y |> trunc) -> y |> trunc
      _ -> :err
    end
  end
end
