defmodule Euler.Problems.Zero.NineTest do
  use ExUnit.Case

  test "base example" do
    result = Euler.Problems.Zero.Nine.exec(12)

    assert result == 60
  end
end
