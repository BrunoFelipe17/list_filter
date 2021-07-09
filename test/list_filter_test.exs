defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the length of odd numbers" do
      assert ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
      assert ListFilter.call(["2", "4", "6"]) == 0
      assert ListFilter.call(["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]) == 5
    end
  end
end
