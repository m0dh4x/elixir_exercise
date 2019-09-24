defmodule Times do
  def double(n) do
    n * 2
  end
  def doubleShort(n), do: n * 2
end

defmodule Greetings do
  def greeting(greeting, name), do: (
    IO.puts greeting
    IO.puts "How are you #{name}?"
  )
end