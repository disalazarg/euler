defmodule Euler.Helpers.Prime do
  @moduledoc """
  Defines helpers for determining the prime decomposition of a number
  """
  @seed [2, 3]

  def stream do
    @seed
    |> Stream.concat(
      Stream.iterate(1, &(&1 + 1))
      |> Stream.flat_map(fn k -> [6 * k - 1, 6 * k + 1] end)
      |> Stream.filter(&is_prime/1)
    )
  end

  @spec factors(integer) :: list(integer)
  def factors(num) do
    stream()
    |> Stream.take_while(&(&1 <= num))
    |> Enum.to_list()
    |> decom(num, [])
  end

  # Helpers
  @spec decom(list(integer), integer, list(integer)) :: list(integer)
  defp decom(_cs, 1, list), do: list

  defp decom([c | cs], num, list) when rem(num, c) == 0,
    do: decom([c | cs], div(num, c), [c | list])

  defp decom([_c | cs], num, list), do: decom(cs, num, list)

  @spec is_prime(integer) :: boolean
  defp is_prime(n) do
    limit = :math.sqrt(n)

    stream()
    |> Stream.take_while(&(&1 < limit))
    |> Enum.all?(fn x -> rem(n, x) > 0 end)
  end
end
