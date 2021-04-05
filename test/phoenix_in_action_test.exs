defmodule PhoenixInActionTest do
  use ExUnit.Case
  doctest PhoenixInAction

  test "greets the world" do
    assert PhoenixInAction.hello() == :world
  end
end
