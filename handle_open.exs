handle_open = fn
  {:ok, file} -> "First line: #{IO.read(file, :line)}"
  {:error, error} -> "Error: #{:file.format_error(error)}, #{:file}, #{error}"
end
IO.puts handle_open.(File.open("hello_world.exs"))
IO.puts handle_open.(File.open("nicht_da"))
