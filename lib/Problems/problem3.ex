defmodule Problems.Problem3 do
  def solve do
    factors = Math.get_factors(600_851_475_143)
    get_largest_prime_factor(factors)
  end

  def get_largest_prime_factor(factors, current_largest_prime_factor \\ 1)

  def get_largest_prime_factor([], current_largest_prime_factor) do
    current_largest_prime_factor
  end

  def get_largest_prime_factor([factor | rest], current_largest_prime_factor) do
    cond do
      Math.prime?(factor) -> get_largest_prime_factor(rest, factor)
      true -> get_largest_prime_factor(rest, current_largest_prime_factor)
    end
  end


end
