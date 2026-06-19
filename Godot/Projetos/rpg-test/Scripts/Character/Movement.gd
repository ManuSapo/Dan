extends CharacterBody2D

@export var speed = 0.2
@export var tilesize = 16

var ismoving: bool = false
func get_input():
	var input_direction = Vector2.ZERO
	if Input.is_action_pressed("Right"):
		input_direction = Vector2.RIGHT
	elif Input.is_action_pressed("Left"):
		input_direction = Vector2.LEFT
	elif Input.is_action_pressed("Up"):
		input_direction = Vector2.UP
	elif Input.is_action_pressed("Down"):
		input_direction = Vector2.DOWN
	velocity = input_direction * speed
	
func _physics_process(_delta: float) -> void: 
	if not ismoving:
		get_input()
	
