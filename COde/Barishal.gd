extends Sprite2D
var dragging = false
@onready var popup_panel: PopupPanel = $"../PopupPanel"
var of = Vector2(0,0)
@onready var label_barishal: Label = $"../PopupPanel/LabelBarishal"
func _ready() -> void:
	label_barishal.text = "Barishal"
func _process(delta: float) -> void:
	if dragging:
		position = get_global_mouse_position() - of
func _on_button_button_down() -> void:
	dragging = true
	of = get_global_mouse_position()-global_position

func _on_button_button_up() -> void:
	dragging = false
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('BarishalPlace'):
		position = Vector2(216, 272) - of
		visibility_layer = 0
		dragging = false
		popup_panel.show()
		label_barishal.show()
		label_barishal.position = Vector2(10,10)
