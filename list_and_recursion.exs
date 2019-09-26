defmodule MyList do
  def len([]), do: 0
  def len([_head|tail]), do: 1 + len(tail)
end

defmodule MyListSquare do
  def square([]), do: []
  def square([head|tail]), do: [ head * head | square(tail) ]
end

defmodule MyListWithFunc do
  def map([], _func), do: []
  def map([head|tail], func), do: [ func.(head) | map(tail, func) ]
end

defmodule MyReducer do
  def reduce([], startValue, _), do: startValue
  def reduce([head | tail], startValue, func) do 
    reduce(tail, func.(head, startValue), func)
  end
end

defmodule MapSumExcercise do
  def mapsum([] ,_), do: 0
  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end
end

defmodule MaxNumberExcercise do
  def highest([]), do: -1
  def highest([x]), do: x
  def highest([head | tail]) do
    compare(head, highest(tail))
  end

  defp compare(val, currentHighest) when val < currentHighest do
    currentHighest
  end

  defp compare(val, currentHighest) when val > currentHighest do
    val
  end
end