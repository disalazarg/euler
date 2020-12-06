defmodule Euler.Helpers.PrimeTest do
  use ExUnit.Case

  alias Euler.Helpers.Prime

  describe "the prime decomposition" do
    test "when multiplied, returns the original number" do
      result =
        13195
        |> Prime.factors()
        |> Enum.reduce(&*/2)

      assert result == 13195
    end
  end
end
