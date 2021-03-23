extends Area2D

var gravidade = 1000
var pulo = -800
var limite = 600
var velocidade = Vector2()

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	velocidade.y += gravidade * delta
	if Input.is_action_just_pressed("pulo"):
		velocidade.y = pulo
	position += velocidade * delta
	if position.y >= limite:
		position.y = limite
