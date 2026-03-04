extends Node2D

@onready var choicebutton_scn = preload("res://choicebutton.tscn")

var choice_buttons: Array[Button] = []

func _ready() -> void:
	add_choice("yes")
	add_choice("no")
	add_choice("maybe")

func clear_dialog_box():
	$VBoxContainer/Label.text = ""
	for choice in choice_buttons :
		$VBoxContainer.remove_child(choice)
	choice_buttons = []
	pass

func add_text(text: String):	
	$VBoxContainer/Label.text = text
	pass
	
func add_choice(choice_text: String):
	var button_obj: choicebutton = choicebutton_scn.instantiate()
	button_obj.choice_index = choice_buttons.size()
	choice_buttons.push_back(button_obj)
	button_obj.text = choice_text
	button_obj.choice_selected.connect(_on_choice_selected)
	$VBoxContainer.add_child(button_obj)
	
func _on_choice_selected(choice_index: int):
	print(choice_index)
	pass
