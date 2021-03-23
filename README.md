[Canal DavidGames001](https://www.youtube.com/channel/UC0650aI0QXjwPUSIsvGJIGg/videos)


- [x] [Como instalar Godot Engine no PC](https://www.youtube.com/watch?v=mvTWm68GBOI)
- [ ] [Criando e configurar projeto no Godot - Androide, PC e Web](https://www.youtube.com/watch?v=OXphOqStIbo)
- [x] [Corrida infinita Godot - ep1 importar (clone do Dino Google)](https://www.youtube.com/watch?v=QIat6Gz8gOk)

- Colocar em 2D
- Ir em Project>Project Settings, na árvore selecionar Display>Window:
- - Colocar Width como 1280 e Height como 720;
- - Colocar Stretch>Mode colocar "2d" e em Stretch>Aspect colocar "keep";
- Em FileSystem criar duas pastas, "Scenes" e "Scripts".

A Godot possui 3 tipos de nós bases, "2D" para jogos em 2D, "3D" para jogos em 3D, "User Interface" para interface de usuário.
A opção "Other Node" permite adição de nós de animação, canvas, timers, entre outros nós específicos.
O personagem é um objeto que se move e detecta a colisão com outros objetos:

- Selecionar Node>CanvasItem>Node2D>CollisionObject2D>Area2D. Não vamos usar o outro objeto de física pois não há necessidade.

Precisamos adicionar uma cara ao nodo recém criado. 
Na árvore da cena selecionar o nodo recém criado, clicar com o botão direito e selecionar "Add child node".
Adicionaremos um nó filho, esse nodo vai adicionar propriedades ao nodo pai.

- O nó filho será o Node>CanvasItem>Node2D>AnimatedSprite que permite criar sprites animados automáticamente.

No nodo de AnimatedSprite recém criado, no inspector dele na propriedade Frames que está como "Empty", clicar nela e escolher "New SpriteFrames" e clicar nele.
Vai aparecer uma tela para configurar as animações do sprite.
Nela já vem uma animação chamada "default", clique nela para mudar o nome para "parado".
O "Speed (FPS)" colocar como "0" e desativar a opção "Loop".
Criar uma nova animação chamada "correndo" clicando no botão "New Animation".
O "Speed (FPS)" dela colocar como "8" e deixar ativada a opção "Loop".
Agora selecione novamente a animação "parado". Vá no "FileSystem" na pasta Images em "Players>Variable sizes>Blue" e selecione o arquivo "alienBlue_stand.png". Clique e arraste ele para a área de "Animation Frames", essa única imagem será a animação de "parado".
Selecione novamente a animação "correndo". Nela adicione os arquivos "alienBlue_walk1.png" e "alienBlue_walk2.png".
No "Inspector" do AnimatedSprite pode-se ver a animação marcando a propriedade "Playing", desmarque depois de ver como ficou.
Mude o nome do nó "Area2D" para "jogador" e do "AnimatedSprite" para "sprite".

- Adicione um script no nó "jogador" clicando no botão "Attach node script". Selecione a pasta onde vai ficar o script "Scripts". Clique em "Create".

Colocar o seguinte script:

```GDScript
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
```

- Para criar uma tecla de referência vá em Project>Project Settings na aba "Input Map", no campo "Action:" coloque "pulo" e clique em "Add". Ela srá criada no fim da lista. Clique no botão de + nela para adicionar a tecla de "espaço" para ser a tecla de pulo. 

- Clique no botão "Play Scene (F6)" para testar.

<<minuto 5:50>>

- [ ] [Corrida infinita Godot - ep2 jogador p1/3](https://www.youtube.com/watch?v=BxIdBx1Piek)
- [ ] [Corrida infinita Godot - ep3 jogador p2/3](https://www.youtube.com/watch?v=CMxhSEfGNTE)
- [ ] [Corrida infinita Godot - extra pulo duplo](https://www.youtube.com/watch?v=Rs8y17rP0T4)


- [ ] [Ele me DESAFIOU, então eu CRIEI UM JOGO EM UM DIA no Godot!](https://www.youtube.com/watch?v=ln-Q_4BWYCo)

- [ ] [Godot 3 | Básico](https://www.youtube.com/watch?v=Isa29mdpsks&list=PL1W6qGlVxnrO835T4g7pBy0ixMfChPLJy)
- [ ] [Godot 3 | Intermediário](https://www.youtube.com/watch?v=qaZZiYto0sY&list=PL1W6qGlVxnrOi876Fdz9wTEsDntNxppYA)
- [ ] [Godot 3](https://www.youtube.com/watch?v=LR6D5bunRqg&list=PLk9XvfPR8vS_EOidYR4kwGtC1otkplISO)

- [ ] [Cria jogo: (Receita bolo) Introdução Godot Engine - Tutorial rápido de Godot, Nodes, Scenes, GDScript - 1](https://www.youtube.com/watch?v=gvMmYw8fDJU&list=PLqYboeh3Jru6T0wLKmVBCbHPpyORUoGo7)

- [ ] [#1 - Tutorial Godot - Apresentação da Ferramenta e Início do projeto [PT br]](https://www.youtube.com/watch?v=XyMeFxgT7YU)

Os objetos no Godot possuem [notificações](https://docs.godotengine.org/en/stable/getting_started/workflow/best_practices/godot_notifications.html), que nada mais são do que eventos disparados por eles quando alguma situação ocorre.


func _ready():
Ocorre quando o objeto é criado.

func _process(delta):
É o update ou step de outras bibliotecas e engines. É dependente do framerate.

func _physics_process(delta):
É um update independente do framerate.
