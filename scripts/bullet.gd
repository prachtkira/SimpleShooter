extends Area2D

@export var bulletSpeed: int = 10

func _physics_process(delta):
	global_position.y -= bulletSpeed*delta
