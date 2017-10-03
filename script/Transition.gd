extends CanvasLayer

# class member variables go here, for example:
# var a = 2  # var b = "textvar"eee
var savegame = File.new()
var save_path = "user://savegame.save"
var save_data = {"highscore1":0,"highscore2":0,"highscore3":0}

var path = ""

func _ready():
	if not savegame.file_exists(save_path):
		create_save()

func create_save():
	savegame.open(save_path,File.WRITE)
	savegame.store_var(save_data)
	savegame.close()

func save(high_score):
	
	savegame.open(save_path,File.READ)
	var current = savegame.get_var()
	savegame.close()
	
	if(high_score > current["highscore1"]):
		current["highscore3"] = current["highscore2"]
		current["highscore2"] = current["highscore1"]
		current["highscore1"] = high_score
		
	elif(high_score > current["highscore2"]):
		current["highscore3"] = current["highscore2"]
		current["highscore2"] = high_score
		
	elif(high_score > current["highscore3"]):
		current["highscore3"] = high_score	
	
	savegame.open(save_path,File.WRITE)
	savegame.store_var(current)
	savegame.close()
	
func read_savegame():
	savegame.open(save_path,File.READ)
	save_data = savegame.get_var()
	savegame.close()
	return save_data

func fade_to(scene_path) :
	if not get_node("AnimationPlayer").is_playing() :
		path = scene_path
		get_node("AnimationPlayer").play("position")
	

func fade_to_back(scene_path) :
	if not get_node("AnimationPlayer").is_playing():
		path = scene_path
		get_node("AnimationPlayer").play_backwards("position")
	
func pos_to(scene_path):
	path = scene_path
	get_node("AnimationPlayer").play("position2")
	
func change_scene():
	if path != "" :
		get_tree().change_scene(path)
		
func disable_all():
	pass
	
func allow_all():
	pass