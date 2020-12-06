defmodule Euler.Problems.Zero.Six do
  @moduledoc """
  The sum of the squares of the first ten natural numbers is,

    1^2 + 2^2 + ... + 10^2 = 385

  The square of the sum of the first ten natural numbers is,

    (1 + 2 + ... + 10)^2 = 55^2 = 3025

  Hence the difference between the sum of the squares of the first ten natural numbers and the square
  of the sum is 3025 - 385 = 2640

  Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
  """
  @behaviour Euler.Problems.Behaviour

  @impl Euler.Problems.Behaviour
  def exec(limit) do
    square_sum =
      1..limit
      |> Enum.sum()
      |> square

    sum_square =
      1..limit
      |> Enum.map(&square/1)
      |> Enum.sum()

    square_sum - sum_square
  end

  # Helpers
  @spec square(integer) :: integer
  defp square(n), do: n * n
end
