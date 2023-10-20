defmodule ProjectEuler do
  @moduledoc """
  Documentation for `ProjectEuler`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ProjectEuler.hello()
      :world

  """
  def run do
    solution = Problems.Problem1.solve()
    IO.puts("Solution: #{solution}")
  end
end
