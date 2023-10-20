defmodule Problems.Problem2 do
  require Integer
  def solve do
    fibonacci_terms_under_4_million = get_fibonacci_sequence_up_to(4_000_000)
    sum_even_valued_elements(fibonacci_terms_under_4_million)
  end

  def get_fibonacci_sequence_up_to(_x, array \\ [])

  def get_fibonacci_sequence_up_to(x, []) do
    get_fibonacci_sequence_up_to(x, [0, 1])
  end

  def get_fibonacci_sequence_up_to(x, list) do
    [n_2, n_1] = Enum.take(list, -2)
    case n_2 + n_1 do
      n when n <= x -> get_fibonacci_sequence_up_to(x, (list ++ [n]))
      _ -> list
    end
  end

  def sum_even_valued_elements(_array, accumulator \\ 0)

  def sum_even_valued_elements([], accumulator) do
    accumulator
  end

  def sum_even_valued_elements([head | tail], accumulator) when Integer.is_even(head) do
    sum_even_valued_elements(tail, head + accumulator)
  end

  def sum_even_valued_elements([_ | tail], accumulator) do
    sum_even_valued_elements(tail, accumulator)
  end
end
