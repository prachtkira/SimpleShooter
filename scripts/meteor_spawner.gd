extends Node2D

@onready var spawnPos = $Positions
var meteorScene = preload("res://scenes/meteor.tscn")

func _on_timer_timeout():
	meteorSpawner()
	
func meteorSpawner():
	var posArray = spawnPos.get_children()
	var randPos = posArray.pick_random()
	
	var meteorInstance = meteorScene.instantiate()
	meteorInstance.global_position = randPos.global_position
	add_child(meteorInstance)
