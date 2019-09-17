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

mr_valim = Greeter.for("Flo", "Moin")
mrs_valim = Greeter.for("Mina", "Hallo")
IO.puts mr_valim.("Flo")
IO.puts mr_valim.("Janina")
IO.puts mrs_valim.("Mina")
IO.puts mrs_valim.("Jessica")

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
greetingShortFunction.('Flo')

shortFunctionErlang = &length/1
IO.puts 'Länge short function: #{shortFunctionErlang.([1,2,3,4,5,6,7,8,9,10])}'

longFunctionErlang = fn x -> length(x) end
IO.puts 'Länge long function: #{longFunctionErlang.([1,2,3,4,5])}'

IO.puts ''
IO.puts '------- Short functions --------'
IO.puts ''