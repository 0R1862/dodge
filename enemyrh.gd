extends Area2D




func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		hide()
		await get_tree().create_timer(0.3).timeout
		get_tree().quit()
