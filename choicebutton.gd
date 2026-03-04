class_name choicebutton extends Button

var choice_index: int
signal choice_selected(choice_index)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	choice_selected.emit(choice_index)
	pass # Replace with function body.
