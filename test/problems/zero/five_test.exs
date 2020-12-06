defmodule Euler.Problems.Zero.FiveTest do
  use ExUnit.Case

  test "base example" do
    result = Euler.Problems.Zero.Five.exec(10)

    assert result == 2520
  end
end
