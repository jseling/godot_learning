[Canal DavidGames001](https://www.youtube.com/channel/UC0650aI0QXjwPUSIsvGJIGg/videos)


Os objetos no Godot possuem [notificações](https://docs.godotengine.org/en/stable/getting_started/workflow/best_practices/godot_notifications.html), que nada mais são do que eventos disparados por eles quando alguma situação ocorre.


func _ready():
Ocorre quando o objeto é criado.

func _process(delta):
É o update ou step de outras bibliotecas e engines. É dependente do framerate.

func _physics_process(delta):
É um update independente do framerate.
