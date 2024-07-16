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
	
	move_and_slide()
	
	var screenSize = get_viewport_rect().size

	global_position = global_position.clamp(Vector2(0,0), screenSize)
