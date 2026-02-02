extends RichTextLabel

var default_text = "Current score: "

func _process(_delta: float) -> void:
	var scoreText = str(default_text, str(Globalscr.current_score))
	self.text = scoreText
