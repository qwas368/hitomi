defmodule Hitimi.CoreTest do
  use ExUnit.Case
  doctest Hitimi.Core

  test "pure_function" do
    assert Hitimi.Core.pure_function() == :pure_function
  end
end
