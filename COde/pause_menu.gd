extends Control
@onready var texture_button: TextureButton = $TextureButton
@onready var menu_button: MenuButton = $MenuButton
func _on_texture_button_pressed() -> void:
	get_tree().paused = true
	menu_button.get_popup()
	
