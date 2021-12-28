
def caesar_cipher(string, number)
	encrypted_string = ""
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	cap_alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

	string.split("").each { |letter| 
		if (alphabet.include? letter) == true || (cap_alphabet.include? letter) == true
			letter_index = letter == letter.capitalize ? cap_alphabet.index(letter) : alphabet.index(letter)
			new_position = letter_index + number
			new_alphabet_position = new_position % 26
			encrypted_string += alphabet[new_alphabet_position]
		else
			encrypted_string += letter
		end
	}
	p encrypted_string
end

caesar_cipher("Wha[?t a StriNg!?", 5)