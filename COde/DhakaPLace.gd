extends Sprite2D
var change = preload("res://Map/map_project_dhaka.png")


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('Dhaka'):
		texture = change
