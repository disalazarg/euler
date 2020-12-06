defmodule Euler.Problems.Zero.ThreeTest do
  use ExUnit.Case

  test "base example" do
    result = Euler.Problems.Zero.Three.exec(13195)

    assert result == 29
  end
end
