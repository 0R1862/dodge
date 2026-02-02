extends RichTextLabel

var default_text = "High score: "

func _process(delta: float) -> void:
	print("mydelta:::" + str(delta))
	var scoreText = str(default_text, str(Globalscr.high_score))
	self.text = scoreText
