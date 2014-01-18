defmodule AP.Format.Test do
  use ExUnit.Case
  import AP.Format

  test "Can format a list of strings" do
    assert format(%w(a b c d), color: false) == """
    [
      [0] "a"
      [1] "b"
      [2] "c"
      [3] "d"
    ]
    """
  end

  test "Can format a list containing a list" do
    assert format(["a", "b", ["c", "d"]], color: false) == """
    [
      [0] "a"
      [1] "b"
      [2] [
        [0] "c"
        [1] "d"
      ]
    ]
    """
  end
end
