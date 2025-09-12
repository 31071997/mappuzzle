extends Sprite2D
@onready var label: Label = $"../Label"
var change = preload('res://Map/map_project_rangpur.png')
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('Rangpur'):
		texture = change
		Score.score += 1
		label.text = Score.score_label + str(Score.score)
