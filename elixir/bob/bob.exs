defmodule Bob do
  def hey(input) do
    cond do
    	input && String.strip(input) == "" -> "Fine. Be that way!"
    	String.ends_with?(input, "?") -> "Sure."
    	String.upcase(input) == input -> "Whoa, chill out!"
    	String.ends_with?(input, "!") -> "Whatever."
		
    	#only_number input -> "Whatever."
    	
        true -> "Whatever."
    end
  end

  defp only_number(input) do
   	input
   	|> String.split ", "
   	|> Enum.join
   	|> String.to_integer
   	|> is_integer
   end 
end
