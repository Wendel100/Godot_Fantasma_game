extends Area2D
var abobora:int =0
func _on_body_entered(body):
	if (body.name =="Fantasma"):
		$CanvasLayer/Label.set_text(str(GameGlobal.aboboras))
		GameGlobal.aboboras +=1
		$AudioStreamPlayer2D.play()
		$AnimatedSprite2D.play("coleta")
		print("voce coletou aboboras "+str(GameGlobal.aboboras))
	 	
func _on_audio_stream_player_2d_finished():
			queue_free()
