defmodule Bob do
  def hey(input) do
    cond do
    	input && String.strip(input) == "" -> "Fine. Be that way!"
    	String.ends_with?(input, "?") -> "Sure."
    	String.downcase(input) != input && String.upcase(input) == input -> "Whoa, chill out!"
    	String.ends_with?(input, "!") -> "Whatever."
    	
        true -> "Whatever."
    end
  end
end
