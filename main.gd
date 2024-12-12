extends Node2D


@export var player_speed: float = 200.0


func _process(delta):
	var velocity = Vector2.ZERO  

	
	if Input.is_action_pressed("ui_right"):
		velocity.x += 3 
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= 3
	
	if Input.is_action_pressed("ui_down"):
		velocity.y += 3 
	elif Input.is_action_pressed("ui_up"):
		velocity.y -= 3

	
	position += velocity.normalized() * player_speed * delta
