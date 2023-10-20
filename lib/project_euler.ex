defmodule ProjectEuler do
  def run do
    solution = Problems.Problem1.solve()
    IO.puts("Solution: #{solution}")
  end
end
