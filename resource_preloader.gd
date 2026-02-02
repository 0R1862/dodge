class_name SaveGame
extends Resource

const SAVE_GAME_PATH := "res://Globalscr.gd"

@export var high_score: Resource = preload("res://Globalscr.gd")

func write_savegame() -> void:
	ResourceSaver.save(self, SAVE_GAME_PATH)

static func load_savegame() -> Resource:
	if ResourceLoader.exists(SAVE_GAME_PATH):
		return load(SAVE_GAME_PATH)
	return null
