extends Node2D

@export var dialog_json : JSON
@onready var state = {
	"show_only_one": true,
	"player_name": "kiki"
}
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	($EzDialogue as EzDialogue).start_dialogue(dialog_json, state)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_ez_dialogue_dialogue_generated(response: DialogueResponse) -> void:
	$dialoguebox.clear_dialog_box()
	
	$dialoguebox.add_text(response.text)
	
	for choice in  response.choices:
		$dialoguebox.add_choice(choice) 
	pass # Replace with function body.
