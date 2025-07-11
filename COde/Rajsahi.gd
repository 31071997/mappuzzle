extends Sprite2D
@onready var popup_panel: PopupPanel = $"../PopupPanel"
@onready var label_rajsahi: Label = $"../PopupPanel/LabelRajsahi"
func _ready() -> void:
	label_rajsahi.text = 'Rajsahi'
var dragging = false
var of = Vector2(0, 0)
func _process(delta: float) -> void:
	if dragging:
		position = get_global_mouse_position() - of

func _on_button_button_down() -> void:
	dragging = true
	of = get_global_mouse_position()-global_position

func _on_button_button_up() -> void:
	dragging = false


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('RajsahiPlace'):
		dragging = false
		position = Vector2(377, 390)
		visibility_layer = 0
		popup_panel.show()
		label_rajsahi.show()
		label_rajsahi.position = Vector2(10,10)
