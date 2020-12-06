defmodule Euler.Helpers.FibTest do
  use ExUnit.Case

  alias Euler.Helpers.Fib

  describe "the fibonacci generator" do
    test "works as a stream" do
      fibs = Fib.stream() |> Stream.take(5) |> Enum.to_list()

      assert fibs == [1, 1, 2, 3, 5]
    end
  end
end
