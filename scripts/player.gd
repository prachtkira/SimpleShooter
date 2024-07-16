extends CharacterBody2D

@export var movementSpeed : int = 100

func _process(delta):
	if Input.is_action_just_pressed("shoot"):
		shoot()

func shoot():
	var bulletScene = preload("res://scenes/bullet.tscn")
	var bulletInstance = bulletScene.instantiate()
	add_child(bulletInstance)
	bulletInstance.global_position.y -= 65

func _physics_process(delta):
	
	velocity = Vector2(0,0)
	
	if Input.is_action_pressed("ui_up"):
		velocity.y -= movementSpeed
	if Input.is_action_pressed("ui_down"):
		velocity.y = movementSpeed
	if Input.is_action_pressed("ui_left"):
		velocity.x -= movementSpeed
	if Input.is_action_pressed("ui_right"):
		velocity.x = movementSpeed
	
	move_and_slide()
	
	var screenSize = get_viewport_rect().size
	global_position = global_position.clamp(Vector2(0,0), screenSize)
