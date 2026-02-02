extends Area2D

@onready var gameover: AudioStreamPlayer2D = $"../../Gameover"

func _on_enemy_th_body_entered(body):
	if body.is_in_group("Player"):
		hide()
		await get_tree().create_timer(0.3).timeout
		gameover.play()
		Globalscr.Sc_upd()
		await get_tree().create_timer(1.85).timeout
		get_tree().paused = true
		if get_tree().paused == true:
			get_tree().paused = false
			Globalscr.play_again()
