extends CanvasLayer
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _on_timer_timeout():
	if GameGlobal.time_game !=0:
		GameGlobal.time_game -=1
		$Label.text =str(GameGlobal.time_game)
		if GameGlobal.time_game ==0:
				get_tree().reload_current_scene()
				GameGlobal.time_game=0
				GameGlobal.aboboras=0
