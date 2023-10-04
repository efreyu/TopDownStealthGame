extends "res://scripts/character.gd"

var motion = Vector2()


func _process(delta):
	update_motion(delta)
	move_and_slide()


func update_motion(delta):
	if Input.is_action_pressed("ui_up") and not Input.is_action_pressed("ui_down"):
		velocity.y = clamp((velocity.y - SPEED), -MAX_SPEED, 0)
	elif Input.is_action_pressed("ui_down") and not Input.is_action_pressed("ui_up"):
		velocity.y = clamp((velocity.y + SPEED), 0, MAX_SPEED)
	else:
		velocity.y = 0
		velocity.x = 0
