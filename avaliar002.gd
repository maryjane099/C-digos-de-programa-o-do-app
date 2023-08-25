extends Button

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_avaliar_button_up():
	var leitura_inserida_str = $"../Leitura_usuario".text;
	
	# Verificar se é um número
	if not leitura_inserida_str.is_valid_float():
		$"../Resultado_avaliacao_leitura".text = "A leitura deve ser um número!"
		$"../Resultado_avaliacao_leitura".visible = true
		return
	
	# Verificar se tenho somente duas casas decimais
	var regex = RegEx.new()
	regex.compile("^[0-9]*\\.[0-9][0-9]$")
	if regex.search(leitura_inserida_str) == null:
		$"../Resultado_avaliacao_leitura".text = "A leitura deve ter duas casas decimais!"
		$"../Resultado_avaliacao_leitura".visible = true
		return
	
	# Verificar se o número é múltiplo de 5
	print(leitura_inserida_str[-1])
	var last_digit = int(leitura_inserida_str[-1]);
	
	if last_digit % 2 != 0:
		$"../Resultado_avaliacao_leitura".text = "A leitura deve ser múltiplo de 0.02!"
		$"../Resultado_avaliacao_leitura".visible = true
		return
	
	var leitura_exata = float($"../leitura".text)
	var leitura_inserida = float(leitura_inserida_str)
	
	print(leitura_exata)
	print(leitura_inserida)
	
	var div_cinco = floor(leitura_inserida * 100)
	
	if abs(leitura_exata - leitura_inserida) < 0.06:
		print("Leitura correta.")
		$"../Resultado_avaliacao_leitura".text = "Parabéns, leitura correta!"
	else:
		print("Leitura errada.")
		$"../Resultado_avaliacao_leitura".text = "Leitura errada!"

	$"../Resultado_avaliacao_leitura".visible = true
