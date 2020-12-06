defmodule Euler.Problems.Behaviour do
  @moduledoc """
  General behaviour for problem solutions
  """

  @doc "Executes a solution with a given numerical argument"
  @callback exec(integer) :: integer
end
