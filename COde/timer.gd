extends Node
class_name time
var timer
func _ready() -> void:
	timer.get_tree().create_timer(5)
