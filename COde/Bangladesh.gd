extends Node2D
class_name Score
@onready var popup_panel: PopupPanel = $PopupPanel
@onready var label: Label = $Label
static var score: int = 0
static var score_label: String = 'Score: '
func _ready() -> void:
	popup_panel.hide()
	MainMenu.hide()
	PauseMenu.show()
	label.text += Score.score_label + str(Score.score)


func _on_button_pressed() -> void:
	pass # Replace with function body.
