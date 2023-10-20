defmodule ProjectEuler do
  def run do
    solution = Problems.Problem3.solve()
    IO.puts("Solution: #{solution}")
  end
end
