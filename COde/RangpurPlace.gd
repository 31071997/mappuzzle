extends Sprite2D
@onready var label: Label = $"../Label"
var change = preload('res://Map/map_project_rangpur.png')
@onready var button: Button = $Button
func _process(delta: float) -> void:
	if(Score.score >= 8):
		button.disabled = false
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('Rangpur'):
		texture = change
		Score.score += 1
		label.text = Score.score_label + str(Score.score)
@onready var timer: Timer = $Timer
var timePress = 0
var time = 0
var path = 'res://Scene/rangpur.tscn'
func _on_button_pressed() -> void:
	timePress += 1
	if(timePress == 1):
		time = 0
		timer.start()
	elif(timePress == 2 and time < 1):
		get_tree().change_scene_to_file(path)
		timer.stop()
		timePress = 0
	else:
		timePress = 0
	

func _on_timer_timeout() -> void:
	time += 1
	if(time >= 1):
		timer.stop() 
