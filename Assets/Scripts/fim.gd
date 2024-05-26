extends Control
# Função para definir o texto do Label
# colocando o valor aculado das aboboras na variavel total
func _ready():
	# Obtém uma referência ao CanvasLayer
	var total =str(GameGlobal.aboboras)

	# Verifica se o CanvasLayer foi encontrado
	if total:
		# Define o texto do Label no CanvasLayer
		$CanvasLayer/TOTAL.set_text(total)

