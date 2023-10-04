extends "res://scripts/character.gd"

var motion = Vector2()


func _process(delta):
	update_motion(delta)
	move_and_slide()


func update_motion(delta):
	look_at(get_global_mouse_position())
	
	if Input.is_action_pressed("ui_up") and not Input.is_action_pressed("ui_down"):
		velocity.y = clamp((velocity.y - SPEED), -MAX_SPEED, 0)
	elif Input.is_action_pressed("ui_down") and not Input.is_action_pressed("ui_up"):
		velocity.y = clamp((velocity.y + SPEED), 0, MAX_SPEED)
	else:
		velocity.y = lerp(velocity.y, 0.0, FRICTION)
		
	if Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		velocity.x = clamp((velocity.x - SPEED), -MAX_SPEED, 0)
	elif Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left"):
		velocity.x = clamp((velocity.x + SPEED), 0, MAX_SPEED)
	else:
		velocity.x = lerp(velocity.x, 0.0, FRICTION)
