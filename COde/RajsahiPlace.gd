extends Sprite2D
var change = preload('res://Map/map_project_rajsahi.png')
@onready var label: Label = $"../Label"
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('Rajsahi'):
		texture = change
		Score.score += 1
		label.text = Score.score_label + str(Score.score)
