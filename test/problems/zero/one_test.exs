defmodule Euler.Problems.Zero.OneTest do
  use ExUnit.Case

  test "base example" do
    result = Euler.Problems.Zero.One.exec(10)

    assert result == 23
  end
end
