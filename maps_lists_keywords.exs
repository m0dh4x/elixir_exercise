defmodule Canvas do
  @defaults [fg: "black", bg: "white", font: "Times"]
  def draw_text(text, options \\ []) do
    options = Keyword.merge(@defaults, options)
    IO.puts "Drawing text #{inspect(text)}"
    IO.puts "Foreground: #{options[:fg]}"
    IO.puts "Background: #{Keyword.get(options, :bg)}"
    IO.puts "Font: #{Keyword.get(options, :font)}"
    IO.puts "Pattern #{Keyword.get(options, :pattern, "solid")}"
    IO.puts "Style #{inspect Keyword.get_values(options, :style)}"
  end
end

defmodule InspectMaps do
  @people [
    %{ name: "Grumpy",    height: 1.24 },
    %{ name: "Dave",      height: 1.88 },
    %{ name: "Dopey",     height: 1.32 },
    %{ name: "Shaquille", height: 2.16 },
    %{ name: "Sneezy",    height: 1.28 }
  ]
  def inspect_map() do
    for people = %{height: height} <- @people, height > 1.5, do: people.name
  end
end

