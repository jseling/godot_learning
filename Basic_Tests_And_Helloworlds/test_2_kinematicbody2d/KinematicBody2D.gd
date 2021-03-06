extends KinematicBody2D

var direcao = Vector2()

func _process(delta):
	direcao = Vector2()
	
	if Input.is_action_pressed("ui_left"):
		direcao.x = -1

	if Input.is_action_pressed("ui_right"):
		direcao.x = 1

	if Input.is_action_pressed("ui_up"):
		direcao.y = -1

	if Input.is_action_pressed("ui_down"):
		direcao.y = 1

func _physics_process(delta):
	move_and_slide(direcao * 500)
