extends Area2D

func _on_enemy_th_body_entered(body):
	if body.is_in_group("Player"):
		hide()
		await get_tree().create_timer(0.3).timeout
		get_tree().quit()
