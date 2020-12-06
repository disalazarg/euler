defmodule Euler.Helpers.FibTest do
  use ExUnit.Case
  use PropCheck, default_opts: [numtests: 100]

  alias Euler.Helpers.Fib

  describe "the fibonacci generator" do
    test "works as a stream" do
      fibs =
        Fib.stream()
        |> Stream.take(5)
        |> Enum.to_list()

      assert fibs == [1, 1, 2, 3, 5]
    end

    property "has the nth number in the series the same as a reference model" do
      forall num <- integer(1, 10_000_000) do
        nth =
          Fib.stream()
          |> Stream.take(num)
          |> Enum.to_list()
          |> List.last()

        nth == fib(num, 1, 0)
      end
    end
  end

  # Reference model, tail-recursive base definition for a = 1, b = 0
  defp fib(n, a, b)
  defp fib(1, a, _b), do: a
  defp fib(n, a, b), do: fib(n - 1, a + b, a)
end
