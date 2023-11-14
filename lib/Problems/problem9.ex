defmodule Problems.Problem9 do
  def solve do
    find_pythagorean_triplet()
  end

  def find_pythagorean_triplet(a \\ 1, b \\ 1)
  def find_pythagorean_triplet(a, b) when b > 1000 do
    find_pythagorean_triplet(a + 1, 1)
  end

  def find_pythagorean_triplet(a, b) when a < 1000 do
    triplet = get_pythagorean_triplet(a, b)
    case triplet do
      { _, _, :err } -> find_pythagorean_triplet(a, b + 1)
      { a, b, c } when a + b + c == 1000 -> a*b*c
      { a, b, _ } -> find_pythagorean_triplet(a, b + 1)
    end
  end

  def get_pythagorean_triplet(a, b) do
    { a, b, Math.sqrt_perfect(a*a + b*b)}
  end
end
