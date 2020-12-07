defmodule Euler.Problems.Zero.Seven do
  @moduledoc """
  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

  What is the 10 001st prime number?
  """
  @behaviour Euler.Problems.Behaviour

  alias Euler.Helpers.Prime

  @impl Euler.Problems.Behaviour
  def exec(nth) do
    Prime.stream()
    |> Stream.take(nth)
    |> Enum.to_list()
    |> List.last()
  end
end
