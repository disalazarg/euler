defmodule Euler.Problems.Zero.TwoTest do
  use ExUnit.Case

  test "base example" do
    result = Euler.Problems.Zero.Two.exec(100)

    assert result == 44
  end
end
