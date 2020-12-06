defmodule Euler.Problems.Zero.Three do
  @moduledoc """
  The prime factors of 13195 are 5, 7, 13 and 29.

  What is the largest prime factor of the number 600851475143 ?
  """
  @behaviour Euler.Problems.Behaviour

  alias Euler.Helpers.Prime

  @impl Euler.Problems.Behaviour
  def exec(num) do
    num
    |> Prime.factors()
    |> Enum.max()
  end
end
