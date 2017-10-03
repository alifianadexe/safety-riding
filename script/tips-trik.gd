extends Control

var moveX1 = 0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass


var number = 1

func _on_home_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to_back("res://scene/menu.tscn")
	pass # replace with function body


func _on_prev_pressed():
	sfxTo.get_node("sfx").play("Button")
	if !(moveX1 >= 0) :
		var moveY = get_node("Container/Panel/VBoxContainer").get_pos().y
		var moveX2 = get_node("Container/Panel/VBoxContainer").get_pos().x + 800
	
		var anim = get_node("AnimationPlayer").get_animation("cangeposition")
		anim.track_set_key_value(0,0,Vector2(moveX1,moveY))
		anim.track_set_key_value(0,1,Vector2(moveX2,moveY))
	
		get_node("AnimationPlayer").play("cangeposition")
	
		moveX1 = get_node("Container/Panel/VBoxContainer").get_pos().x + 800 
		number -=1
		get_node("Container/Panel1/Label").set_text("Tips#"+str(number))
	
	pass # replace with function body


func _on_next_pressed():
	sfxTo.get_node("sfx").play("Button")
	var moveX2 = get_node("Container/Panel/VBoxContainer").get_pos().x - 800
	
	if !(moveX2 <= -6400) :
		var moveY = get_node("Container/Panel/VBoxContainer").get_pos().y
	
		var anim = get_node("AnimationPlayer").get_animation("cangeposition")
		anim.track_set_key_value(0,0,Vector2(moveX1,moveY))
		anim.track_set_key_value(0,1,Vector2(moveX2,moveY))
	
		get_node("AnimationPlayer").play("cangeposition")
	
		moveX1 = get_node("Container/Panel/VBoxContainer").get_pos().x - 800 
		number +=1
		get_node("Container/Panel1/Label").set_text("Tips#"+str(number))
	
	pass # replace with function body

func disabled_button() :
	get_node("prev").set_disabled(true)
	get_node("next").set_disabled(true)
	

func enabled_button() :
	get_node("prev").set_disabled(false)
	get_node("next").set_disabled(false)
	
func _notification(what):
	if(what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST):
		TransitionTo.fade_to_back("res://scene/menu.tscn")
		
	
