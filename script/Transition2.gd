extends CanvasLayer

# class member variables go here, for example:
# var a = 2  # var b = "textvar"eee

var path = ""

func pos_to(scene_path):
	path = scene_path
	get_node("AnimationPlayer").play("position2")
	
func change_scene():
	if path != "" :
		get_tree().change_scene(path)