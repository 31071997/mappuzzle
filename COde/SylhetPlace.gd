extends Sprite2D
var change = preload('res://COde/Sylhet.gd')
var dragging = false
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('Sylhet'):
		texture = change
