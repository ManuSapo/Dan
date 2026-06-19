extends CharacterBody2D


@export var SPEED = 300


@warning_ignore("unused_parameter")
func _physics_process(delta: float) -> void:
	var directiony = Input.get_axis("ui_up", "ui_down")
	var directionx := Input.get_axis("ui_left", "ui_right")
	if directionx:
		velocity.x = directionx * SPEED
		print("right")
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	if directiony:
		velocity.y = directiony * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		
	move_and_slide()
