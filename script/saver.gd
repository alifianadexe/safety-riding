extends TextureFrame

# class member variables go here, for example:

var highscore = {"highscore1":0,"highscore2":0,"highscore3":0}

func _ready():
	
	highscore = TransitionTo.read_savegame()
	get_node("high_score").set_text("1.  "+str(highscore["highscore1"]))
	get_node("high_score1").set_text("2.  "+str(highscore["highscore2"]))
	get_node("high_score2").set_text("3.  "+str(highscore["highscore3"]))
	


func _on_Button_pressed():
	self.hide()
	pass # replace with function body
