extends Control
var url1 = 'res://Scene/Bangladesh.tscn'
var count = 0
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file(url1)
func mute_bgm():
	var bus = AudioServer.get_bus_index("BUS")
	AudioServer.set_bus_mute(bus, true)

func unmute_bgm():
	var bus = AudioServer.get_bus_index("BUS")
	AudioServer.set_bus_mute(bus, false)
	
func _on_check_button_toggled(toggled_on: bool) -> void:
	mute_bgm()
