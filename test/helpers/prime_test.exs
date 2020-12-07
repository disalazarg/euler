defmodule Euler.Helpers.PrimeTest do
  use ExUnit.Case
  use PropCheck, default_opts: [numtests: 100]

  alias Euler.Helpers.Prime

  describe "a prime decomposition" do
    property "has all members being themselves primes" do
      forall num <- integer(2, 10_000_000) do
        num
        |> Prime.factors()
        |> Enum.all?(fn n -> Prime.factors(n) == [n] end)
      end
    end

    property "when multiplied, returns the original number" do
      forall num <- integer(2, 10_000_000) do
        result =
          num
          |> Prime.factors()
          |> Enum.reduce(&*/2)

        result == num
      end
    end
  end

  describe "a stream of prime numbers" do
    test "it works as a stream" do
      result =
        Prime.stream()
        |> Stream.take(6)
        |> Enum.to_list()
        |> List.last()

      assert result == 13
    end
  end
end
