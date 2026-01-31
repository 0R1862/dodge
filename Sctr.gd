extends RichTextLabel

var default_text = "Current score: "

func _process(delta: float) -> void:
	print("mydelta:::" + str(delta))
	var scoreText = str(default_text, str(Globalscr.current_score))
	self.text = scoreText

#func _process(delta: float) -> void:
	
