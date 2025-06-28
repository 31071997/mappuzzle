extends  PopupPanel
@onready var label_barishal: Label = $VScrollBar/LabelBarishal
@onready var label_chittagong: Label = $VScrollBar/LabelChittagong
@onready var label_dhaka: Label = $VScrollBar/LabelDhaka
@onready var label_khulna: Label = $VScrollBar/LabelKhulna
@onready var label_mymensingh: Label = $VScrollBar/LabelMymensingh
@onready var label_rajsahi: Label = $VScrollBar/LabelRajsahi
@onready var label_rangpur: Label = $VScrollBar/LabelRangpur
@onready var label_sylhet: Label = $VScrollBar/LabelSylhet

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
