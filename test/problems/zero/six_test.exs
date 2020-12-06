defmodule Euler.Problems.Zero.SixTest do
  use ExUnit.Case

  test "base example" do
    result = Euler.Problems.Zero.Six.exec(10)

    assert result == 2640
  end
end
