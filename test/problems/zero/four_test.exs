defmodule Euler.Problems.Zero.FourTest do
  use ExUnit.Case

  test "base example" do
    result = Euler.Problems.Zero.Four.exec(2)

    assert result == 9009
  end
end
