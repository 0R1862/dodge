extends CharacterBody2D

var speed = 80

var adsp = true

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
		if adsp == true:
			await get_tree().create_timer(5).timeout
			speed = speed + 1
			if speed >= 450:
				adsp = false
	else:
		$AnimatedSprite2D.stop()

func pick_new_direction() -> void:
	direction = Vector2.LEFT.rotated(randf_range(0, TAU))
	if not is_inside_tree():
		await ready
	await get_tree().create_timer(1).timeout
	pick_new_direction()
	
