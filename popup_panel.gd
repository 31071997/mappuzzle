extends  PopupPanel

func _ready() -> void:
	popup_hide
	if mouse_entered:
		popup()

func _on_button_pressed() -> void:
	visible = false
