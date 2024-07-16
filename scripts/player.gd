extends CharacterBody2D

@export var movementSteps : int = 100

func _physics_process(delta):
	
	velocity = Vector2(0,0)
	
	if Input.is_action_pressed("ui_up"):
		velocity.y -= movementSteps
	if Input.is_action_pressed("ui_down"):
		velocity.y = movementSteps
	if Input.is_action_pressed("ui_left"):
		velocity.x -= movementSteps
	if Input.is_action_pressed("ui_right"):
		velocity.x = movementSteps
	
	if global_position.x < 0:
		global_position.x = 0
	if global_position.x > 420:
		global_position.x = 420
	if global_position.y < 50:
		global_position.y = 50
	if global_position.y > 650:
		global_position.y = 650
		
	print(global_position)
	
	move_and_slide()
