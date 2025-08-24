extends Control
var url1 = 'res://Scene/Bangladesh.tscn'
var count = 0
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file(url1)
func pauseBGM():
	for player in get_tree().get_nodes_in_group("BGM"):
		player.stream_paused = true
func playBGM():
	for player in get_tree().get_nodes_in_group("BGM"):
		player.stream_paused = false
func _ready() -> void:
	audio_stream_player_2d.play()
func _on_check_button_toggled(toggled_on: bool) -> void:
	count += 1
	if(count%2 == 1):
		pauseBGM()
	else:
		playBGM() 
