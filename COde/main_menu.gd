extends Control
var url1 = 'res://Scene/Bangladesh.tscn'
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file(url1)
