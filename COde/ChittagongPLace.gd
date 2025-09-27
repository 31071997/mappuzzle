extends Sprite2D
var change = preload('res://Map/map_project_chittagong.png')
@onready var label: Label = $"../Label"
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('Chittagong'):
		texture = change
		Score.score += 1
		label.text = Score.score_label + str(Score.score)
@onready var timer: Timer = $Timer
var timepress = 0
var time = 0
var path = 'res://Scene/chittagong.tscn'
func press():
	timepress += 1
	if(timepress == 1):
		timer.start()
	elif(timepress == 2 and time < 1):
		get_tree().change_scene_to_file(path)
		time.stop()
		timepress = 0
	else:
		timepress = 0
func _on_timer_timeout() -> void:
	time += 1
	if(time > 1):
		timer.stop()
func _on_button_2_pressed() -> void:
	press()
func _on_button_pressed() -> void:
	press()
