extends Node2D
@onready var popup_panel: PopupPanel = $PopupPanel
func _ready() -> void:
	popup_panel.hide()
	MainMenu.hide()
	PauseMenu.show()
