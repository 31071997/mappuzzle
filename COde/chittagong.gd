extends Sprite2D
var dragging = false
@onready var popup_panel: PopupPanel = $"../PopupPanel"
@onready var label_chittagong: Label = $"../PopupPanel/VScrollBar/LabelChittagong"
var of = Vector2(0,0)
func _ready() -> void:
	label_chittagong.text = "Chittagong is the trade capital of Bangladesh"
func _process(delta: float) -> void:
	if dragging:
		position = get_global_mouse_position() - of	

func _on_button_button_down() -> void:
	dragging = true
	of = get_global_mouse_position()-global_position

func _on_button_button_up() -> void:
	dragging = false


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('ChittagongPlace'):
		position = Vector2(490, 486)
		visibility_layer = 0
		dragging = false
		popup_panel.show()
		label_chittagong.show()
