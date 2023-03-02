extends Node2D
#criei as variaveis nescessarias e corrigi os erros de escrita
var teste = false
var valor = 0
var numero = 0
var lista = []
var nome = str('')
var count = 0
var i = 0
#corrigi os erros de escrita e a ordem das coisas
func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text)
	nome = $LineEdit2.text

#corrigi a escrita e troquei para as variaveis certas
func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i
		lista.append(numero)
	$Label.text = str(lista)

#corrigi os erros de escrita e de logica processual
func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	i = 0
	while(i != len(lista)):
		if(lista[i]%2==1):
			count+=1
		i += 1
	if(count!=0):
		nome = nome+"baldo"
	$Label2.text = str(nome)
