fizzbuzz = fn
  0,0,_ ->IO.puts "FizzBuzz"
  0,_,_ ->IO.puts "Fizz"
  _,0,_ ->IO.puts "Buzz"
  _,_,n ->IO.puts n
end

#fizzbuzz.(0,0,0)
#fizzbuzz.(0,0,1)
#fizzbuzz.(0,1,1)
#fizzbuzz.(1,0,1)
#fizzbuzz.(1,1,1)

remainder = fn n -> fizzbuzz.(rem(n,3), rem(n,5), n) end
remainder.(10)
remainder.(11)
remainder.(12)
remainder.(13)
remainder.(14)
remainder.(15)
remainder.(16)

prefix = fn pre -> (fn post -> IO.puts "#{pre} #{post}" end) end
mrs = prefix.("Foo")
mrs.("Bar")

prefix.("Foo").("Bar")

IO.puts('')
IO.puts('------- Pinned values --------')
IO.puts('')

defmodule Greeter do
  def for(name, greeting) do
    fn
      (^name) -> "#{greeting} #{name}"
      (_) -> "I don`t know you"
    end
  end
end

mr_valim = Greeter.for("Foo", "Moin")
mrs_valim = Greeter.for("Bar", "Hallo")
IO.puts mr_valim.("Foo")
IO.puts mr_valim.("Bar")
IO.puts mrs_valim.("FooBar")
IO.puts mrs_valim.("BarFoo")

IO.puts ''
IO.puts '------- Short functions --------'
IO.puts ''
square = &(IO.puts(&1 * &1))
square.(8)
sum = &(IO.puts(&1 + &2))
sum.(3,5)

IO.puts ''

divRemShortFunction = &{IO.puts(div(&1,&2)), IO.puts(rem(&1,&2))}
divRemShortFunction.(13,5)

IO.puts ''
greetingShortFunction = &{IO.puts('Moin hier ist #{&1}')}
greetingShortFunction.('Foo')

shortFunctionErlang = &length/1
IO.puts 'Länge short function: #{shortFunctionErlang.([1,2,3,4,5,6,7,8,9,10])}'

longFunctionErlang = fn x -> length(x) end
IO.puts 'Länge long function: #{longFunctionErlang.([1,2,3,4,5])}'

IO.puts ''
IO.puts '------- Exercise 5 --------'
IO.puts ''

# Enum.map [1,2,3,4], fn x -> x + 2 end

IO.puts 'Enum.map [1,2,3,4], fn x -> x + 2 end'
IO.inspect (Enum.map [1,2,3,4], &(&1 + 2))
IO.puts 'Enum.each [1,2,3,4], fn x -> IO.inspect x end'
Enum.each [1,2,3,4], &{IO.inspect(&1)}