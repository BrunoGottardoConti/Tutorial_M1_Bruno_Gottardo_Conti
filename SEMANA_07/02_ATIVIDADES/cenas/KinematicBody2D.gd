extends KinematicBody2D


var velocidade = 200

func _physics_process(delta):
	mover()

func mover():
	var movimento = Vector2.ZERO
	if Input.is_action_pressed("ui_right"):
		movimento.x += 1
	if Input.is_action_pressed("ui_left"):
		movimento.x -= 1
	if Input.is_action_pressed("ui_down"):
		movimento.y += 1
	if Input.is_action_pressed("ui_up"):
		movimento.y -= 1
	movimento = movimento.normalized() * velocidade
	move_and_slide(movimento)

