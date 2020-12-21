defmodule Euler.Problems.Zero.Nine do
  @moduledoc """
  A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
  a^2 + b^2 = c^2

  For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
  Find the product abc.
  """
  @behaviour Euler.Problems.Behaviour

  @impl Euler.Problems.Behaviour
  def exec(sum) do
    hd(
      for x <- 1..sum,
          y <- x..sum,
          z <- y..sum,
          x + y + z == sum and x * x + y * y == z * z do
        x * y * z
      end
    )
  end
end
