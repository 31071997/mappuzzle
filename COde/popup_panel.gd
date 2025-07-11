extends  PopupPanel
@onready var label_barishal: Label = $LabelBarishal
@onready var label_chittagong: Label = $LabelChittagong
@onready var label_dhaka: Label = $LabelDhaka
@onready var label_khulna: Label = $LabelKhulna
@onready var label_mymensingh: Label = $LabelMymensingh
@onready var label_rajsahi: Label = $LabelRajsahi
@onready var label_rangpur: Label = $LabelRangpur
@onready var label_sylhet: Label = $LabelSylhet
func _ready() -> void:
	popup_hide
	if mouse_entered:
		popup()
func _on_button_pressed() -> void:
	label_barishal.hide()
	label_chittagong.hide()
	label_dhaka.hide()
	label_khulna.hide()
	label_mymensingh.hide()
	label_rajsahi.hide()
	label_rangpur.hide()
	label_sylhet.hide()
	visible = false
