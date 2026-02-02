extends Node

var high_score = 0
var current_score = 0
var previous_score = 0

func Sc_upd():
	if current_score > high_score:
		high_score = current_score

func play_again():
	get_tree().change_scene_to_file("res://Menu.tscn")
	current_score = 0
	var _pa = func _on_p_pressed():
		get_tree().change_scene_to_file("res://TestMap.tscn")
