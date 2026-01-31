extends CharacterBody2D

var speed = 80

var direction = Vector2.ZERO

func _ready():
	pick_new_direction()

func _physics_process(_delta):	
	velocity = direction * speed
	move_and_slide()
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.play()
		look_at(global_position + direction)
	else:
		$AnimatedSprite2D.stop()

func pick_new_direction():
	direction = Vector2.LEFT.rotated(randf_range(0, TAU))
	await get_tree().create_timer(randf_range(1.0, 2.0)).timeout
	pick_new_direction()
	
