extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var dragging = false
onready var delta = Vector2(0, 0)

const a = Parametros.F_002 / (Parametros.cur_max_x_002 - Parametros.cur_min_x_002)
const b = - a * Parametros.cur_min_x_002

# Called when the node enters the scene tree for the first time.
func _ready():
	$".".position.x = Parametros.img_paquimetro_x0


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_input_event(viewport, event, shape_idx):
	pass # Replace with function body.
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		dragging = event.pressed
		if event.pressed:
			delta = event.position - $".".position
			
