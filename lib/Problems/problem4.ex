defmodule Problems.Problem4 do
  def solve do
    (for a <- 100..999, b <- 100..999, do: a * b)
      |> Enum.filter(fn x -> palindrome?(x) end)
      |> Enum.max
  end

  def palindrome?(x) when is_integer(x) do
    case reverse_num(x) do
      ^x -> true
      _ -> false
    end
  end

  def reverse_num(x) when is_integer(x) do
    x |> :erlang.integer_to_list
      |> Enum.reverse
      |> :erlang.list_to_integer
  end
end
