extends Area2D
var abobora:int =0

func _on_body_entered(body):
	if (body.name =="Fantasma"):
		GameGlobal.aboboras +=1
		$AudioStreamPlayer2D.play()
		print("voce coletou aboboras "+str(GameGlobal.aboboras))
		
		queue_free()
