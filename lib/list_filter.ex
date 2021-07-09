defmodule ListFilter do
  def call(list) do
    filter(list)
  end

  defp filter(list) do
    list
    |> Enum.map(&parse_int/1)
    |> Enum.filter(fn elem -> rem(elem, 2) == 1 end)
    |> length
  end

  defp parse_int(elem) do
    Integer.parse(elem)
    |> check_number()
  end

  defp check_number({number, _}) do
    number
  end

  defp check_number(:error) do
    0
  end

end
