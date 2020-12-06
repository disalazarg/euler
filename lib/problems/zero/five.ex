defmodule Euler.Problems.Zero.Five do
  @moduledoc """
  2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

  What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
  """

  @behaviour Euler.Problems.Behaviour

  @impl Euler.Problems.Behaviour
  def exec(limit) do
    limit
    |> Stream.iterate(&(&1 + limit))
    |> Stream.filter(&all_div(&1, limit))
    |> Stream.take(1)
    |> Enum.at(0)
  end

  # Helpers
  defp all_div(num, limit) do
    2..limit
    |> Enum.all?(&(rem(num, &1) == 0))
  end
end
