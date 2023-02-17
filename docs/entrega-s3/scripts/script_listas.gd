extends Node
# variaveis e listas
var lista_completa = ['Bruno ','Matheus ','Mario ','Daniel ','Luisa ','Jacob ']
var lista_vazia = []
var count = -1

func _ready():
	$texto_na_tela.hide()

func _on_show_lista_completa_pressed():
	$lable_completa.text = lista_completa[0] + lista_completa[1] + lista_completa[2] + lista_completa[3] + lista_completa[4] + lista_completa[5]
	$texto_na_tela.hide()

func _on_enviar_valores_pressed():
	count += 1
	$lable_completa.text = ''
	lista_vazia.append($dado1.text)
	$lable_adicionada.text =  $lable_adicionada.text + ' ' +lista_vazia[count]
	$dado1.text = ''
	$texto_na_tela.hide()

func _on_show_texto_pressed():
	$texto_na_tela.show()
