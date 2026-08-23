extends Node

var minigames_done = 0 # track how many minigames done
var max_lives = 5
var lives = 5 # track how many lives left, also affecting garlic appearing

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# I guess this is how you do it?
func lose_life():
	lives -= 1
	
	if lives <= 0:
		game_over()

#double-Check this 
func reset_game():
	lives = max_lives
	minigames_done = 0


func game_over():
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
