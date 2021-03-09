[Canal DavidGames001](https://www.youtube.com/channel/UC0650aI0QXjwPUSIsvGJIGg/videos)


- [ ] [Como instalar Godot Engine no PC](https://www.youtube.com/watch?v=mvTWm68GBOI)
- [ ] [Criando e configurar projeto no Godot - Androide, PC e Web](https://www.youtube.com/watch?v=OXphOqStIbo)
- [ ] [Corrida infinita Godot - ep1 importar (clone do Dino Google)](https://www.youtube.com/watch?v=QIat6Gz8gOk)
- [ ] [Corrida infinita Godot - ep2 jogador p1/3](https://www.youtube.com/watch?v=BxIdBx1Piek)
- [ ] [Corrida infinita Godot - ep3 jogador p2/3](https://www.youtube.com/watch?v=CMxhSEfGNTE)
- [ ] [Corrida infinita Godot - extra pulo duplo](https://www.youtube.com/watch?v=Rs8y17rP0T4)


Os objetos no Godot possuem [notificações](https://docs.godotengine.org/en/stable/getting_started/workflow/best_practices/godot_notifications.html), que nada mais são do que eventos disparados por eles quando alguma situação ocorre.


func _ready():
Ocorre quando o objeto é criado.

func _process(delta):
É o update ou step de outras bibliotecas e engines. É dependente do framerate.

func _physics_process(delta):
É um update independente do framerate.
