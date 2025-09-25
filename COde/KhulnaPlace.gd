extends Sprite2D
var change = preload("res://Map/map_project_khulna.png")
@onready var label: Label = $"../Label"

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('Khulna'):
		texture = change
		Score.score += 1
		label.text = Score.score_label + str(Score.score)
var time = 0
var timepress = 0
var path = 'res://Scene/khulna.tscn'
@onready var button: Button = $Button
@onready var timer: Timer = $Timer
func _on_timer_timeout() -> void:
	time += 1
	if(time >= 1):
		timer.stop()
func _on_button_pressed() -> void:
	timepress += 1
	if(timepress == 1):
		timer.start()
	elif(timepress == 2 & time < 1):
		get_tree().change_scene_to_file(path)
		timer.stop()
		timepress = 0
	else:
		timepress = 0
