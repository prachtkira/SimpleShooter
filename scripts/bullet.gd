extends Area2D

@export var bulletSpeed: int = 10
@onready var bulletNotifier = $BulletNotifier

func _physics_process(delta):
	global_position.y -= bulletSpeed*delta

func _on_bullet_notifier_screen_exited():
	queue_free()
