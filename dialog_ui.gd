extends Control

@onready var name_label = $Panel/Label
@onready var text_label = $Panel/Label2

var dialog_data = []
var dialog_index = 0

func start_dialog(data):
	dialog_data = data
	dialog_index = 0
	visible = true
	show_line()

func show_line():
	if dialog_index >= dialog_data.size():
		end_dialog()
		return
	
	name_label.text = dialog_data[dialog_index]["name"]
	text_label.text = dialog_data[dialog_index]["text"]
	dialog_index += 1

func _input(event):
	if visible and event.is_action_pressed("ui_accept"):
		show_line()

func end_dialog():
	visible = false
	
	
