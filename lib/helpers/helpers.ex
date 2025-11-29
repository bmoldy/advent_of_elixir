defmodule Helpers do
  def filepath do
    Path.join(:code.priv_dir(:advent), "inputs")
  end

  def parse(year, day) do
    File.read!(Helpers.filepath() <> "/#{year}/day#{day}.txt")
  end
end
