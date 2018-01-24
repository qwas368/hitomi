defmodule Hitimi.CoreTest do
  use ExUnit.Case
  doctest Hitimi.Core

  test "greets the world" do
    assert Hitimi.Core.hello() == :world
  end
end
