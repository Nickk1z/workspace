extends Control


func _on_button_pressed() -> void:
	if $OptionButton.get_selected_id() == 0: # soma
		$Label.text = str(int($TextEdit.text) + int($TextEdit2.text))
	elif $OptionButton.get_selected_id() == 1: # subtração
		$Label.text = str(int($TextEdit.text) - int($TextEdit2.text))
	elif $OptionButton.get_selected_id() == 2: # multiplicação
		$Label.text = str(int($TextEdit.text) * int($TextEdit2.text))
	elif $OptionButton.get_selected_id() == 3: # divisão
		var num2 = int($TextEdit2.text)
		if num2 != 0:
			$Label.text = str(int($TextEdit.text) / num2)
		else:
			$Label.text = "Erro: divisão por 0"
