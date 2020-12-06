defmodule Euler.Problems.Zero.Four do
  @moduledoc """
  A palindromic number reads the same both ways. The largest palindrome made from the product of
  two 2-digit numbers is 9009 = 91 × 99.

  Find the largest palindrome made from the product of two 3-digit numbers.
  """

  @behaviour Euler.Problems.Behaviour

  @impl Euler.Problems.Behaviour
  def exec(digits) do
    lower = :math.pow(10, digits - 1) |> round()
    upper = :math.pow(10, digits) |> round()
    range = lower..upper

    for x <- range, y <- range, is_palindrome(x * y) do
      x * y
    end
    |> Enum.max()
  end

  @spec is_palindrome(integer) :: bool
  defp is_palindrome(num) do
    ns = to_string(num)

    ns == String.reverse(ns)
  end
end
