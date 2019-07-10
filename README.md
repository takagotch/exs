### elixir .exs
---

https://elixir-lang.org/

https://github.com/elixir-lang/elixir/


```exs
current_process = self()

spawn_link(fn ->
  send(current_process, {:msg, "hello world"})
end)

receive do
  {:msg, contents} -> IO.puts(contents)
end

children = [
  TCP.Pool,
  {TCP.Acceptor, port: 4040}
]

Supervisor.start_link(children, strategy: :one_for_one)


%User{name: name, age: age} = User.get("John Doe")
name


def drive(%User{age: age}) when age >= 16 do
end

drive(User.get("John Doe"))


defmodule MathTest do
  use ExUnit.Case, async: true
  
  test "can add two numbers" do
    assert ! + 1 == 2
  end
end


```

```sh
mix new my_app
cd my_app
mix test

iex

:crypto.hash(:md5, "Using crypto from Erlang OTP")


git clone git://github.com/elixir-lang/ex_doc.git
cd ex_doc && ../elixir/bin/mix do deps.get, compile

make docs
make docs DOCS_FORMAT=epub

bin/elixir lib/elixir/lib/string.ex -o lib/elixir/ebin
bin/elixir lib/elixir/test/elixir/string_test.exs

make compile
make clean_elixir compile

git clone https://github.com/elixir-lang/elixir.git
cd elixir
make clean test
```

```
```

