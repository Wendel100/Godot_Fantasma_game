extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(GameGlobal.aboboras==3):
		get_tree().change_scene_to_file("res://Assets/maps/mundo_02.tscn")
