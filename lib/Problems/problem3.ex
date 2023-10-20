defmodule Problems.Problem3 do
  def solve do
    factors = get_factors(600_851_475_143)
    get_largest_prime_factor(factors)
  end

  def get_largest_prime_factor(factors, current_largest_prime_factor \\ 1)

  def get_largest_prime_factor([], current_largest_prime_factor) do
    current_largest_prime_factor
  end

  def get_largest_prime_factor([factor | rest], current_largest_prime_factor) do
    cond do
      prime?(factor) -> get_largest_prime_factor(rest, factor)
      true -> get_largest_prime_factor(rest, current_largest_prime_factor)
    end
  end

  def prime?(x) do
    case get_factors(x) do
      [1, ^x] -> true
      _ -> false
    end
  end

  def get_factors(x, current_factor \\ 1, factors \\ [])
  def get_factors(x, current_factor, factors) do
    cond do
      current_factor > :math.sqrt(x) |> ceil -> factors |> Enum.sort
      current_factor == :math.sqrt(x) -> factors ++ [current_factor] |> Enum.sort
      Math.factor_of?(current_factor, x) -> get_factors(x, current_factor + 1, factors ++ [current_factor, (x / current_factor) |> trunc])
      true -> get_factors(x, current_factor + 1, factors)
    end
  end
end
