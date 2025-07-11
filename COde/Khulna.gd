extends Sprite2D
@onready var popup_panel: PopupPanel = $"../PopupPanel"
@onready var label_khulna: Label = $"../PopupPanel/LabelKhulna"

var dragging = false
var of = Vector2(0, 0)
func _ready() -> void:
	label_khulna.text = "Khulna"
func _process(delta: float) -> void:
	if dragging:
		position = get_global_mouse_position() - of 

func _on_button_button_down() -> void:
	dragging = true
	of =  get_global_mouse_position()-global_position


func _on_button_button_up() -> void:
	dragging = false


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('KhulnaPlace'):
		dragging = false
		position = Vector2(394, 468)
		visibility_layer = 0
		popup_panel.show()
		label_khulna.show()
		label_khulna.position = Vector2(10,10)
