defmodule StringSeries do
  @doc """
  Given a string `s` and a positive integer `size`, return all substrings
  of that size. If `size` is greater than the length of `s`, or less than 1,
  return an empty list.
  """
  @spec slices(s :: String.t(), size :: integer) :: list(String.t())
  def slices(_, size) when size <= 0, do: []
  def slices(s, size, current_start \\ 0) do
    if current_start + size > String.length(s) do
      []
    else
      [String.slice(s, current_start, size) | slices(s, size, current_start + 1)]
    end
  end
end
