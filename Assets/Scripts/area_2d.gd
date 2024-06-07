extends Area2D
@onready var contador = $CanvasLayer/Label as Label
var abobora:int =1
func _process(delta):
	contador.text = str(GameGlobal.aboboras)
func _on_body_entered(body):
	if (body.name =="Fantasma"):
		$CanvasLayer/Label.set_text(str(GameGlobal.aboboras))
		GameGlobal.aboboras +=abobora
		$AudioStreamPlayer2D.play()
		$AnimatedSprite2D.play("coleta")
		await $CollisionShape2D.call_deferred("queue_free")
		print("voce coletou aboboras "+str(GameGlobal.aboboras))
	 	
func _on_audio_stream_player_2d_finished():
			queue_free()
