extends Area2D

var gravidade = 1000
var pulo = -800
var limite = 600
var velocidade = Vector2()
#var no_chao = false
var slow = false
var f_grav = 3
var n_pulos_max = 2
var n_pulos_atual = 0

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	
	if Input.is_action_pressed("pulo") and slow:
		velocidade.y += gravidade * delta
	else:
		velocidade.y += gravidade * delta * f_grav
		slow = false
	
#	if Input.is_action_just_pressed("pulo") and no_chao:
#		velocidade.y = pulo
#		no_chao = false
#		$sprite.play("pulando")

	if Input.is_action_just_pressed("pulo") and n_pulos_atual < n_pulos_max:
		velocidade.y = pulo
#		no_chao = false
		n_pulos_atual += 1
		$sprite.play("pulando")

	position += velocidade * delta
	if position.y >= limite:
		position.y = limite
#		no_chao = true
		n_pulos_atual = 0
		slow = true
		$sprite.play("correndo")
#		get_node("sprite").play("correndo")
