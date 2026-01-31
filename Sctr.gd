extends RichTextLabel

var default_text = "Current score: "


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var text = str(default_text, str(Globalscr.current_score))
	self.text = text
