extends CharacterBody2D

@export var speed = 200

func get_input():
	var input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	
	
	if Input.is_action_pressed("up"):
		$AnimatedSprite2D.animation = "up"
		$AnimatedSprite2D.flip_v = false
	if Input.is_action_pressed("down"):
		$AnimatedSprite2D.animation = "up"
		$AnimatedSprite2D.flip_v = true
	if Input.is_action_pressed("left"):
		$AnimatedSprite2D.animation = "walk"
		$AnimatedSprite2D.flip_h = true
		$AnimatedSprite2D.flip_v = false
	if Input.is_action_pressed("right"):
		$AnimatedSprite2D.animation = "walk"
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.flip_v = false
	if Input.is_action_pressed("up") and Input.is_action_pressed("left"):
		$AnimatedSprite2D.animation = "up"
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.flip_v = false
	if Input.is_action_pressed("up") and Input.is_action_pressed("right"):
		$AnimatedSprite2D.animation = "up"
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.flip_v = false
	if Input.is_action_pressed("down") and Input.is_action_pressed("right"):
		$AnimatedSprite2D.animation = "up"
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.flip_v = true
	if Input.is_action_pressed("down") and Input.is_action_pressed("left"):
		$AnimatedSprite2D.animation = "up"
		$AnimatedSprite2D.flip_h = false
		$AnimatedSprite2D.flip_v = true


	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.play()
	else:
		$AnimatedSprite2D.stop()

func _physics_process(_delta):
	get_input()
	move_and_slide()

func _ready():
	var timer: SceneTreeTimer = get_tree().create_timer(1.0)
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	Globalscr.current_score += 10
	_ready()
