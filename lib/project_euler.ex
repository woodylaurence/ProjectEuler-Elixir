defmodule ProjectEuler do
  def run do
    solution = Problems.Problem2.solve()
    IO.puts("Solution: #{solution}")
  end
end
