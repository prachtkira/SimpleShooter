extends Area2D

@export var meteorSpeed: int = 100

func _on_body_entered(body):
	body.takeDamage()
	destroyMeteor()

func _physics_process(delta):
	global_position.y += meteorSpeed*delta

func destroyMeteor():
	queue_free()
