extends Sprite2D
var change = preload('res://Map/map_project_barisal.png')
@onready var label: Label = $"../Label"
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('Barishal'):
		texture = change
		Score.score += 1
		label.text = Score.score_label + str(Score.score)
  
