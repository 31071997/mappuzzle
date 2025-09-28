extends Sprite2D
var change = preload('res://Map/map_project_barisal.png')
@onready var label: Label = $"../Label"
@onready var button: Button = $Button
func _process(delta: float) -> void:
	if(Score.score >= 8):
		button.disabled = false
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('Barishal'):
		texture = change
		Score.score += 1
		label.text = Score.score_label + str(Score.score)
@onready var timer: Timer = $Timer  
var time = 0
var timepress = 0
var path = 'res://Scene/barishal.tscn'
func _on_timer_timeout() -> void:
	time += 1
	if(time > 1):
		timer.stop()
func _on_button_pressed() -> void:
	timepress += 1
	if(timepress == 1):
		time = 0
		timer.start()
	elif(timepress == 2 and time < 1):
		get_tree().change_scene_to_file(path)
		timer.stop()
		timepress = 0
	else:
		timepress = 0
