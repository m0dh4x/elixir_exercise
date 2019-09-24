defmodule Times do
  def double(n) do
    n * 2
  end
  def doubleShort(n), do: n * 2
  def tribble(n), do: n * 3
  def quadruple(n), do: double(n) + double(n)
  def quadrupleOther(n), do: n |> double() |> double()
end

defmodule Greetings do
  def greeting(greeting, name), do: (
    IO.puts greeting
    IO.puts "How are you #{name}?"
  )
end

defmodule Factorial do
  def of(0), do: 1
  def of(n), do: n * of(n-1)
end

defmodule FactorialGuard do
  def of(0), do: 1
  def of(n) when is_integer(n) and n > 0  do
   n * of(n-1)
  end
end

defmodule SumNaturals do
  def sum(0), do: 0
  def sum(n), do: n + sum(n - 1)
end

defmodule GreatestCommonDivisor do
  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y, rem(x,y))
end

defmodule DefaultParams do
  def defaultParamsFunc(a, b \\ 2, c \\ 3, d), do: IO.inspect [a, b, c, d]
end

defmodule ChopExcercise do
  def guess(input, min..max) do (
    middle = div(min+max, 2)
    IO.puts "Is it #{middle}?"
    compare input, min..max, middle
  )
  end
  defp compare(input, _.._, input), do: IO.puts "Yes it`s #{input}"

  defp compare(input, min.._, current) when input < current do
    guess input, min..current
  end
  defp compare(input, _..max, current) when input >= current do
    guess input, current..max
  end
end

defmodule AttributesExample do
  @author "Florian Drews"
  def get_author(), do: @author
end

IO.puts "Examples written by #{AttributesExample.get_author}"
IO.puts ""