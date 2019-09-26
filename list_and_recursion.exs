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