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
		timer.start()


func _on_button_pressed() -> void:
	timepress += 1
