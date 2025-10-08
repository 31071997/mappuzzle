extends Node2D
var change = preload("res://Map/BDgreen_bangladesh.png")
var path = 'res://Scene/Bangladesh.tscn'
@onready var button: Button = $Sprite2D/Button
@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var window: Window = $Window
func _ready() -> void:
	MainMenu.hide()
func _on_button_pressed() -> void:
	sprite_2d.texture = change
	window.popup()

func _on_window_close_requested() -> void:
	window.hide()


func _on_button_transation_pressed() -> void:
	get_tree().change_scene_to_file(path)
