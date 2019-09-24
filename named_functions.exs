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