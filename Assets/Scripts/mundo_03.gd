extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(GameGlobal.aboboras==11):
		get_tree().change_scene_to_file("res://Assets/maps/mundo_04.tscn")
