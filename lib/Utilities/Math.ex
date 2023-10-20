defmodule Math do
  def multiple_of?(x, y) when y > 0 do
    rem(x, y) == 0
  end

  def factor_of?(x, y) when x > 0 do
    rem(y, x) == 0
  end

  def fibonacci() do
    Stream.unfold({0, 1}, fn {x, y} -> {x, {y, x + y}} end)
  end
end
