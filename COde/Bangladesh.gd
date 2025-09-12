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
