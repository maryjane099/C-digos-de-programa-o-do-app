extends TextureButton

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_arrow_button_up():
	var error_code = get_tree().change_scene("res://telas/home_screen.tscn")
	if error_code != 0:
		print("ERROR: ", error_code)


