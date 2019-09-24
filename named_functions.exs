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

defmodule SumNaturals do
  def sum(0), do: 0
  def sum(n), do: n + sum(n - 1)
end

defmodule GreatestCommonDivisor do
  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y, rem(x,y))
end