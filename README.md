[Canal DavidGames001](https://www.youtube.com/channel/UC0650aI0QXjwPUSIsvGJIGg/videos)


Os objetos no Godot possuem [notifica��es](https://docs.godotengine.org/en/stable/getting_started/workflow/best_practices/godot_notifications.html), que nada mais s�o do que eventos disparados por eles quando alguma situa��o ocorre.


func _ready():
Ocorre quando o objeto � criado.

func _process(delta):
� o update ou step de outras bibliotecas e engines. � dependente do framerate.

func _physics_process(delta):
� um update independente do framerate.
