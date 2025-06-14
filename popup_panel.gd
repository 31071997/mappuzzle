extends  PopupPanel
func _ready() -> void:
	popup_hide
	if mouse_entered:
		popup()
