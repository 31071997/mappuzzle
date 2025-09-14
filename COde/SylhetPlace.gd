extends Sprite2D
var change = preload('res://Map/map_project_sylhet.png')
@onready var label: Label = $"../Label"
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group('Sylhet'):
		texture = change
		Score.score += 1
		label.text = Score.score_label + str(Score.score)
		


func _on_button_pressed() -> void:
	#pass
