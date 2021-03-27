extends Area2D

var vel = 600
var velocidade = Vector2()


# Called when the node enters the scene tree for the first time.
func _ready():
	print("criado")
	velocidade = Vector2(-1, 0)
	$anim.play("girar")


func _physics_process(delta):
	position.x += velocidade.x * delta * vel


func _on_vis_screen_exited():
	print("destruido")
	queue_free()
