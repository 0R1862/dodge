extends CharacterBody2D

var speed = 100

var addsp = true

@onready var target=get_tree().get_first_node_in_group("Player")

func _physics_process(_delta):
	var direction = (target.position-position).normalized()
	velocity=direction * speed
	look_at(target.position)
	move_and_slide()

	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		$AnimatedSprite2D.play()
		if addsp == true:
			speed = speed + 10
			if speed >= 160:
				addsp = false
	else:
		$AnimatedSprite2D.stop()

func _ready():
	var _timer = get_tree().create_timer(10.0).timeout.connect(func():
		queue_free())
