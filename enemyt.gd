extends CharacterBody2D

var speed = 150

@onready var target=get_tree().get_first_node_in_group("Player")

func _physics_process(_delta):
	var direction = (target.position-position).normalized()
	velocity=direction * speed
	look_at(target.position)
	move_and_slide()
