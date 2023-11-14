defmodule ProjectEuler do
  def run do
    solution = Problems.Problem11.solve()
    IO.puts("Solution: #{solution}")
  end
end
