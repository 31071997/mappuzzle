extends Control
@onready var texture_button: TextureButton = $TextureButton
@onready var menu_button: MenuButton = $MenuButton

func _ready() -> void:
	var popup = menu_button.get_popup()


func _on_menu_button_pressed() -> void:
	get_tree().paused = true
