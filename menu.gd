extends Node2D




func _on_p_pressed():
	get_tree().change_scene_to_file("res://TestMap.tscn")

func _on_q_pressed():
	get_tree().quit()
