extends Node

var is_on = true

func _ready():
	
	pass

func play_this_music_game():
	if is_on:
		if get_node("main2").is_playing():
			get_node("main2").stop()
		get_node("main1").play()
	

func play_this_music_background():
	if is_on:
		if get_node("main1").is_playing():
			get_node("main1").stop()
		get_node("main2").play()

func stop_music(on_kah):
	if !on_kah:
		self.is_on = true
		get_node("main2").play()
	else:
		self.is_on = false
		get_node("main2").stop()