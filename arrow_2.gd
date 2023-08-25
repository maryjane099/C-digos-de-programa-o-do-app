extends TextureButton


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_arrow_button_up():
	var error_code = get_tree().change_scene("res://telas/cuidadoserros.tscn")
	if error_code != 0:
		print("ERROR: ", error_code)
