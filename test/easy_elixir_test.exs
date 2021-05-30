defmodule EasyElixirTest do
  use ExUnit.Case
  doctest EasyElixir

  test "greets the world" do
    assert EasyElixir.hello() == :world
  end
end
