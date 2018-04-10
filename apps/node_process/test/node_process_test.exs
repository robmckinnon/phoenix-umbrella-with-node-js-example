defmodule NodeProcessTest do
  use ExUnit.Case
  doctest NodeProcess

  test "greets the world" do
    assert NodeProcess.hello() == :world
  end
end
