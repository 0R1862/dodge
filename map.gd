extends Node2D

var enemy_scene = preload("res://enemy.tscn")

func _ready():
	spawn_enemy()


func spawn_enemy():
	var enemy = enemy_scene.instantiate()
	enemy.position = Vector2(200, 200)
	enemy.tree_exited.connect(on_enemy_died)
	add_child(enemy)
	var random_x = randf_range(0, 480)
	var random_y = randf_range(0, 720)
	enemy.position = Vector2(random_x, random_y)


func on_enemy_died():
	spawn_enemy()
	Globalscr.current_score += 10
