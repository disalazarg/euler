defmodule Euler.Problems.Zero.EightTest do
  use ExUnit.Case

  test "base example" do
    result = Euler.Problems.Zero.Eight.exec(4)

    assert result == 5_832
  end
end
