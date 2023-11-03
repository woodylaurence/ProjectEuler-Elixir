defmodule ProjectEuler do
  def run do
    solution = Problems.Problem8.solve()
    IO.puts("Solution: #{solution}")
  end
end
