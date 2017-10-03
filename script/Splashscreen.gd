extends Control


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	get_node("AnimationPlayer").play("splash")
	sfxTo.get_node("sfx").play("Opening")
	pass

func change_scene() :
	Transition2To.pos_to("res://scene/menu.tscn")
