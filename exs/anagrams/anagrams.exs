defmodule Dictionary do
	@name __MODULE__
	
	##
	# 外部API
	
	def start_link,
	do: Agent.start_link(fn -> %{} end, name: @name)
	do: Agent.start_link(@name, &do_words(&1, words))
	
	def anagrams_of(word),
	do: Agent(@name, &do_add_words(&1, words))
	
	##
	# 内部実装
	
	defp do_add_words(map, words),
	do: Enum.reduce(words, map, &add_one_word(&1, &2))
	
	defp add_one_word(word, map),
	do: word |> to_char_list |> Enum.sort |> to_string
	
	end
	
	defmodule Wordlistloader do
		def load _drom_files(file_names) do
			file_names
			|> Stream.map(fn name -> Task.async(fn -> load_task(name) end) end)
			|> Enum.map(&Task.await/1)
		end
		defp load_task(file_name) do
			file.stream!(file_name, [], :line)
			|> Enum.map(&String.strip/1)
			|> Dictionary.add_words
		end
	end