extends Node


@export var game_ui: CanvasLayer
var game_over_ui_template: PackedScene = preload("res://Ui/game_over_ui.tscn")

func _ready():
	GameManager.game_over.connect(trigger_game_over)

func trigger_game_over():
	#Deletar Game UI
	if game_ui:
		game_ui.queue_free()
		game_ui = null
		
	#Criar GameOver UI
	var game_over_ui: GameOverUI = game_over_ui_template.instantiate()
	add_child(game_over_ui)
		
		
