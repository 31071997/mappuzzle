extends Control
@onready var menu_button: MenuButton = $MenuButton
var change = preload("res://icon/letter-x.png")
func _ready() -> void:
	var popup = menu_button.get_popup()
	popup.add_item("Resume", 0)
	popup.add_item("Quit", 1)
	popup.add_item("Restart", 2)
	popup.add_item("Main Menu", 3)
	popup.id_pressed.connect(_on_menu_item_selected)
func _on_menu_item_selected(id: int) -> void:
	match id:
		0:
			get_tree().paused = false
		1:
			get_tree().quit()
		2:
			get_tree().paused = false
			get_tree().reload_current_scene()
			Score.score = 0
		3:
			get_tree().paused = false
			get_tree().change_scene_to_file('res://Scene/MainMenu.tscn')
func _on_menu_button_pressed() -> void:
	menu_button.icon = change
	get_tree().paused = true
