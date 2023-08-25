extends Control
#encosto fixo
onready var Label = get_node("popup_encosto_fixo/Label")
onready var popup = get_node("popup_encosto_fixo")
#orelha móvel
onready var label_orelha_movel = get_node("popup_orelha_movel/label_orelha_movel")
onready var popup_orelha_movel = get_node("popup_orelha_movel")
#bicos
onready var label_bicos = get_node("popup_bicos/label_bicos")
onready var popup_bicos = get_node("popup_bicos")
#escala
onready var label_escala = get_node("popup_orelha_movel")
onready var popup_escala = get_node("popup_escala")
#nonio polegada
onready var label_nonio = get_node("popup_nonio_mm/label_nonio_mm")
onready var popup_nonio = get_node("popup_nonio_mm")
#trava
onready var label_trava = get_node("popup_trava/label_trava")
onready var popup_trava = get_node("popup_trava")
#orelha fixa
onready var label_orelha_fixa = get_node("popup_orelha_fixa/label_orelha_fixa")
onready var popup_orelha_fixa = get_node("popup_orelha_fixa")
#encosto móvel
onready var label_encosto_movel = get_node("popup_encosto_movel/label_encosto_movel")
onready var popup_encosto_movel = get_node("popup_encosto_movel")
#cursor
onready var label_cursor = get_node("popup_cursor/label_cursor")
onready var popup_cursor = get_node("popup_cursor")
#nônio em mm
onready var label_nonio_mm = get_node("popup_nonio_mm/label_nonio_mm")
onready var popup_nonio_mm = get_node("popup_nonio_mm")
#impulsor
onready var label_impulsor = get_node("popup_impulsor/label_impulsor")
onready var popup_impulsor = get_node("popup_impulsor")
#escala polegadas
onready var label_escala_pol = get_node("popup_escala_pol/label_escala_pol")
onready var popup_escala_pol = get_node("popup_escala_pol")
#haste
onready var label_haste = get_node("popup_haste/label_haste")
onready var popup_haste = get_node("popup_haste")

onready var popups = [popup, popup_orelha_movel, popup_bicos, popup_haste, popup_escala, popup_nonio, popup_trava, popup_orelha_fixa, popup_encosto_movel, popup_cursor, popup_nonio_mm, popup_impulsor, popup_escala_pol]

func hide_all_popups():
	for popup in popups:
		popup.visible = false;

func _ready():
	pass # Replace with function body.



func _on_encosto_fixo_button_up():
	hide_all_popups();
	popup.visible = true


func _on_orelha_movel_button_up():
	hide_all_popups();
	popup_orelha_movel.visible = true


func _on_bicos_button_up():
	hide_all_popups();
	popup_bicos.visible = true


func _on_escala_button_up():
	hide_all_popups();
	popup_escala.visible = true


func _on_nonio_button_up():
	hide_all_popups();
	popup_nonio.visible = true


func _on_trava_button_up():
	hide_all_popups();
	popup_trava.visible = true


func _on_orelha_fixa_button_up():
	hide_all_popups();
	popup_orelha_fixa.visible = true


func _on_encosto_movel_button_up():
	hide_all_popups();
	popup_encosto_movel.visible = true


func _on_cursor_button_up():
	hide_all_popups();
	popup_cursor.visible = true


func _on_nonio_mm_button_up():
	hide_all_popups();
	popup_nonio_mm.visible = true


func _on_impulsor_button_up():
	hide_all_popups();
	popup_impulsor.visible = true


func _on_escala_pol_button_up():
	hide_all_popups();
	popup_escala_pol.visible = true


func _on_haste_button_up():
	hide_all_popups();
	popup_haste.visible = true
