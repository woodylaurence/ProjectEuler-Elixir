defmodule Problems.Problem4 do
  def solve do
    products = get_products_from_range(100, 999)
    get_largest_palindromic_product(products)
  end

  def get_largest_palindromic_product(products, acc \\ 0)
  def get_largest_palindromic_product([], acc) do
    acc
  end
  def get_largest_palindromic_product([head | tail], acc) do
    cond do
      palindrome?(head) -> get_largest_palindromic_product(tail, head)
      true -> get_largest_palindromic_product(tail, acc)
    end
  end

  def get_products_from_range(min_x, max_x) do
    get_products_from_range(min_x, min_x, min_x, max_x, %{})
  end
  def get_products_from_range(current_a, current_b, _min_x, max_x, products) when current_a > max_x and current_b == max_x do
    products |> Map.keys |> Enum.sort
  end
  def get_products_from_range(current_a, current_b, min_x, max_x, products) when current_a > max_x do
    get_products_from_range(min_x, current_b + 1, min_x, max_x, products)
  end
  def get_products_from_range(current_a, current_b, min_x, max_x, products) do
    get_products_from_range(current_a + 1, current_b, min_x, max_x, Map.put(products, current_a * current_b, :ok))
  end

  def palindrome?(x) when is_integer(x) do
    cond do
      x == reverse_num(x) -> true
      true -> false
    end
  end

  def reverse_num(x) when is_integer(x) do
    get_digits(x) |> reverse_array |> get_num_from_digits
  end

  def reverse_array(x, current_reversed_characters \\ [])
  def reverse_array([], acc) do
    acc
  end
  def reverse_array([head | tail], acc) do
    reverse_array(tail, [head | acc])
  end

  def get_digits(x, digits \\ [])
  def get_digits(x, digits) when x < 10 do
    [x | digits]
  end
  def get_digits(x, digits) do
    remainder = rem(x, 10)
    get_digits(x / 10 |> trunc, [remainder | digits])
  end

  def get_num_from_digits(digits, acc \\ 0, acc_factor \\ 1)
  def get_num_from_digits([], acc, _) do
    acc
  end
  def get_num_from_digits(digits, acc, acc_factor) do
    [last_digit | rest] = digits |> Enum.reverse
    get_num_from_digits(rest |> Enum.reverse, acc + last_digit * acc_factor, acc_factor * 10)
  end
end
