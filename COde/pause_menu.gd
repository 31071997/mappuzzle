extends Control
@onready var texture_button: TextureButton = $TextureButton
@onready var menu_button: MenuButton = $MenuButton

func _ready() -> void:
	var popup = menu_button.get_popup()
	popup.add_item("Play", 0)
	popup.add_item("Quit", 1)
	popup.add_item("Restart", 2)
	popup.add_item("Load", 3)

	popup.id_pressed.connect(_on_menu_item_selected)
func _on_menu_item_selected(id: int) -> void:
	match id:
		0:
			get_tree().paused = false
		1:
			print(id)
		2:
			print(id)
		3:
			print(id)

func _on_menu_button_pressed() -> void:
	get_tree().paused = true
