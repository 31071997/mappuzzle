extends Sprite2D
var change = preload('res://Map/map_project_sylhet.png')
@onready var label: Label = $"../Label"
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('Sylhet'):
		texture = change
		Score.score += 1
		label.text = Score.score_label + str(Score.score)
@onready var timer: Timer = $Timer
var timePress = 0
var time = 0
func _on_button_pressed() -> void:
	timePress += 1
	if(timePress == 1):
		time = 0
		timer.start()
	elif(timePress == 2 and time < 1):
		print('yes')
		timer.stop()
		timePress = 0
	else:
		print('no')
		timePress = 0
func _on_timer_timeout() -> void:
	time += 1
	if(time >= 1):
		timer.stop() 
