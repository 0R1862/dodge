extends RichTextLabel

var default_text = "High score: "

func _process(_delta: float) -> void:
	var scoreText = str(default_text, str(Globalscr.high_score))
	self.text = scoreText
