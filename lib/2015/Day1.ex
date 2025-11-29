defmodule Day1_2015 do
  @input Helpers.parse("2015", "1")
  def solve1 do
    {count_open, count_close} =
      {String.count(@input, "("), String.count(@input, ")")}

    (count_open - count_close) |> IO.puts()
  end

  def solve1newinput(input) do
    {count_open, count_close} =
      {String.count(input, "("), String.count(input, ")")}

    (count_open - count_close) |> IO.puts()
  end

  def solve2 do
    input_length = @input |> String.length()

    index =
      1..input_length
      |> Enum.to_list()
      |> Enum.map(fn counter -> String.slice(@input, 0, counter) end)
      |> Enum.map(fn a -> {String.count(a, "("), String.count(a, ")")} end)
      |> Enum.map(fn {a, b} -> a - b end)
      |> Enum.find_index(fn a -> a == -1 end)

    floor = index + 1
    IO.puts(floor)

    # |> Enum.take_while(fn {_a, b} -> b == -1 end)

    #   |> Enum.map(fn part_input -> Day1_2015.solve1newinput(part_input) end)
    # |> Enum.with_index()
    # |> inspect()
    # |> IO.puts()
  end
end
