extends Control
var url1 = 'res://Scene/Bangladesh.tscn'
var count = 0
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file(url1)


func _on_button_2_toggled(toggled_on: bool) -> void:
	count += 1
func _ready() -> void:
	if(count%2 == 1):
		audio_stream_player.stream_paused = true
	else:
		audio_stream_player.stream_paused = false
