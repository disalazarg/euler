defmodule Euler.Helpers.Prime do
  @moduledoc """
  Defines helpers for determining the prime decomposition of a number
  """

  @spec factors(integer) :: list(integer)
  def factors(num) do
    num
    |> fun([], 2)
  end

  # Helpers
  @spec fun(integer, list(integer), integer) :: list(integer)
  def fun(num, list, curr)
  def fun(1, list, _curr), do: list
  def fun(num, list, curr) when curr > num, do: list
  def fun(num, list, curr) when rem(num, curr) == 0, do: fun(div(num, curr), [curr | list], curr)
  def fun(num, list, curr), do: fun(num, list, curr + 1)
end
