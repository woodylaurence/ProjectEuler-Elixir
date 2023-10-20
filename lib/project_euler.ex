defmodule ProjectEuler do
  def run do
    solution = Problems.Problem4.solve()
    IO.puts("Solution: #{solution}")
  end
end
