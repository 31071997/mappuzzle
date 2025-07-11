extends Sprite2D
var dragging = false
var of = Vector2(0, 0)
@onready var popup_panel: PopupPanel = $"../PopupPanel"
@onready var label_sylhet: Label = $"../PopupPanel/LabelSylhet"
func _ready() -> void:
	label_sylhet.text = 'Sylhet'
func _process(delta: float) -> void:
	if dragging:
		position = get_global_mouse_position() - of

func _on_button_button_down() -> void:
	dragging = true
	of = get_global_mouse_position() - global_position

func _on_button_button_up() -> void:
	dragging = false


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('SylhetPlace'):
		dragging = false
		visibility_layer = 0
		position = Vector2(496, 390)
		popup_panel.show()
		label_sylhet.show()
		label_sylhet.position = Vector2(10,10)
