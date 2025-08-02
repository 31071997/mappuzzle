extends Sprite2D
@onready var popup_panel: PopupPanel = $"../PopupPanel"
@onready var label_mymensingh: Label = $"../PopupPanel/LabelMymensingh"
@onready var label: Label = $"../PopupPanel/LabelMymensingh/ScrollMymensingh/VBoxContainer/Label"
var dragging = false
var of = Vector2(0, 0) 
func _ready() -> void:
	label_mymensingh.text = 'Mymyensingh'
	var url = 'res://text/Mymensingh.txt'
	var file = FileAccess.open(url, FileAccess.READ)
	var txt = file.get_as_text()
	label.text = txt 
func _process(delta: float) -> void:
	if dragging:
		position = get_global_mouse_position() - of

func _on_button_button_down() -> void:
	dragging = true
	of = get_global_mouse_position()-global_position

func _on_button_button_up() -> void:
	dragging = false


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('MymensinghPlace'):
		dragging = false
		position = Vector2(442, 378)
		visibility_layer = 0	
		popup_panel.show()
		label_mymensingh.show()
		label_mymensingh.position = Vector2(10,10)
