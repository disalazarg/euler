defmodule Euler.Helpers.Fib do
  @moduledoc """
  Defines helpers for working with the Fibonacci series
  """

  def stream do
    {1, 0}
    |> Stream.iterate(fn {a, b} -> {a + b, a} end)
    |> Stream.map(fn {n, _p} -> n end)
  end
end
