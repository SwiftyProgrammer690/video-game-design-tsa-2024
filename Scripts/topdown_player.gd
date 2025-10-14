# Topdown Player
extends CharacterBody2D

@export var speed = 300
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func get_input():
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed

func _physics_process(delta):
	get_input()

	if velocity.length() > 0:
		if abs(velocity.x) > abs(velocity.y):
			# Moving side (left or right)
			animated_sprite_2d.animation = "side"
			animated_sprite_2d.flip_h = velocity.x < 0
		elif velocity.y < 0:
			# Moving up
			animated_sprite_2d.animation = "up"
		else:
			# Moving down
			animated_sprite_2d.animation = "down"
	else:
		# Not moving = idle
		animated_sprite_2d.animation = "idle"

	animated_sprite_2d.play()
	move_and_slide()
