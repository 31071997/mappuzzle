extends Control
@onready var menu_button: MenuButton = $MenuButton

func _ready() -> void:
	var popup = menu_button.get_popup()
	popup.add_item("Play", 0)
	popup.add_item("Quit", 1)
	popup.add_item("Restart", 2)
	popup.id_pressed.connect(_on_menu_item_selected)
func _on_menu_item_selected(id: int) -> void:
	match id:
		0:
			get_tree().paused = false
		1:
			get_tree().quit()
		2:
			get_tree().reload_current_scene()
			Score.score = 0
func _on_menu_button_pressed() -> void:
	get_tree().paused = true
