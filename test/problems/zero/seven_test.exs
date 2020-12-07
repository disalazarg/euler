defmodule Euler.Problems.Zero.SevenTest do
  use ExUnit.Case

  test "base example" do
    result = Euler.Problems.Zero.Seven.exec(6)

    assert result == 13
  end
end
