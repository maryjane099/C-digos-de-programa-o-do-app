extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
onready var dragging = false
onready var delta = Vector2(0, 0)

const a = Parametros.F_002  / (Parametros.cur_max_x_002 - Parametros.cur_min_x_002)
const b = - a * Parametros.cur_min_x_002

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		dragging = event.pressed
		if event.pressed:
			delta = event.position - $".".position
			

func _process(_dt):
	var cur_pos_es = a * $".".position.x + b
	
	$"../../qual_passou".text = "passou de: " + str(floor(cur_pos_es))
	
	var vetor_cur = [cur_pos_es]
	for tick in range(0, Parametros.cur_num_div_002):
		vetor_cur.append(vetor_cur[tick] + Parametros.cur_dx_mm_002)
		
	$"../../vetor_cursor".text = "cur: " + str(vetor_cur)
	
	var pos_alinhamento = find_alinhamento(vetor_cur)

	var leitura = floor(cur_pos_es) + pos_alinhamento * Parametros.cur_res_002
	$"../../leitura".text = "Leitura: " + str(leitura)

		
	if dragging:
		var new_position = get_viewport().get_mouse_position() - delta
		
		if new_position.x < Parametros.cur_min_x_002:
			new_position.x = Parametros.cur_min_x_002
			
		if new_position.x > Parametros.cur_max_x_002:
			new_position.x = Parametros.cur_max_x_002
		
		$".".position.x = new_position.x

func find_alinhamento(vetor):
	var index_min = -1;
	var delta_min = INF;
	
	for i in range(len(vetor)):
		var x = vetor[i]
		var y = round(vetor[i])
		var diff = abs(x - y)
		if diff < delta_min:
			index_min = i;
			delta_min = diff;
		
	assert(index_min != -1)
	
	return index_min
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
