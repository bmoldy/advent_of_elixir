defmodule Day2_2015 do
  @input Helpers.parse("2015", "2")
  defp multiply([a, b, c]) do
    2 * a * b + 2 * b * c + 2 * a * c
  end

  defp smallestside([a, b, c]) do
    [a * b, a * b, b * c] |> Enum.min()
  end

  def solve1() do
    package_dimensions =
      @input
      |> String.split("\n")
      |> Enum.map(fn a -> String.split(a, "x") end)
      |> List.delete_at(-1)
      |> Enum.map(fn list -> Enum.map(list, fn a -> String.to_integer(a) end) end)
      |> Enum.map(fn list -> smallestside(list) + multiply(list) end)
      |> Enum.sum()

    IO.inspect(package_dimensions)
  end
end
