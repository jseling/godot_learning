[Canal DavidGames001](https://www.youtube.com/channel/UC0650aI0QXjwPUSIsvGJIGg/videos)


- [ ] [Como instalar Godot Engine no PC](https://www.youtube.com/watch?v=mvTWm68GBOI)
- [ ] [Criando e configurar projeto no Godot - Androide, PC e Web](https://www.youtube.com/watch?v=OXphOqStIbo)
- [ ] [Corrida infinita Godot - ep1 importar (clone do Dino Google)](https://www.youtube.com/watch?v=QIat6Gz8gOk)
- [ ] [Corrida infinita Godot - ep2 jogador p1/3](https://www.youtube.com/watch?v=BxIdBx1Piek)
- [ ] [Corrida infinita Godot - ep3 jogador p2/3](https://www.youtube.com/watch?v=CMxhSEfGNTE)
- [ ] [Corrida infinita Godot - extra pulo duplo](https://www.youtube.com/watch?v=Rs8y17rP0T4)


Os objetos no Godot possuem [notifica��es](https://docs.godotengine.org/en/stable/getting_started/workflow/best_practices/godot_notifications.html), que nada mais s�o do que eventos disparados por eles quando alguma situa��o ocorre.


func _ready():
Ocorre quando o objeto � criado.

func _process(delta):
� o update ou step de outras bibliotecas e engines. � dependente do framerate.

func _physics_process(delta):
� um update independente do framerate.
