extends Sprite

onready var dragging = false
onready var delta = Vector2(0, 0)

func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		dragging = event.pressed
		if event.pressed:
			delta = event.position - $".".position
			
func _process(_dt):
	if dragging:
		var new_position = get_viewport().get_mouse_position() - delta
		if new_position.x > 600:
			new_position.x = 600
			
		if new_position.x < 200:
			new_position.x = 200
			
		new_position.y = 263	
		
		
		$".".position = new_position
		
	$"../Label".text = "Position: " + str($".".position - delta)

