extends Control
var email: LineEdit
var senha:LineEdit
var liberar:LineEdit
func _ready():
	email =$LineEdit
	senha = $LineEdit2
func _on_login_pressed():
	if email.text =="adm" and senha.text =="1234":
		print("login sucesso")
		get_tree().change_scene_to_file("res://Assets/maps/mundo_01.tscn")
	else:
		print("Senha ou login errados")
