extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var moveX1 = 0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	get_tree().set_auto_accept_quit(false)
	
	pass

func disabled_button() :
	
	sfxTo.get_node("sfx").play("Button")
	if get_node("Container/VBoxContainer/AnimationPlayer").is_playing():
		pass
	
func enabled_button() :
	pass
	
func _on_btn_prev_pressed():
	sfxTo.get_node("sfx").play("Button")

	pass # replace with function body

func _on_TextureButton_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to_back("res://scene/menu.tscn")
	pass # replace with function body


func _on_TextureButton1_pressed():
	sfxTo.get_node("sfx").play("Button")
	if not get_node("Container/VBoxContainer/AnimationPlayer").is_playing():
		if !(moveX1 >= 0) :
			var moveY = get_node("Container/VBoxContainer/PanelContainer").get_pos().y
			var moveX2 = get_node("Container/VBoxContainer/PanelContainer").get_pos().x + 800
	
			var anim = get_node("Container/VBoxContainer/AnimationPlayer").get_animation("positionContainer")
			anim.track_set_key_value(0,0,Vector2(moveX1,moveY))
			anim.track_set_key_value(0,1,Vector2(moveX2,moveY))
	
			get_node("Container/VBoxContainer/AnimationPlayer").play("positionContainer")
	
			moveX1 = get_node("Container/VBoxContainer/PanelContainer").get_pos().x + 800 

func _on_TextureButton2_pressed():
	sfxTo.get_node("sfx").play("Button")
	
	if not get_node("Container/VBoxContainer/AnimationPlayer").is_playing():
		var moveX2 = get_node("Container/VBoxContainer/PanelContainer").get_pos().x - 800
	
		if !(moveX2 <= -5600) :
			var moveY = get_node("Container/VBoxContainer/PanelContainer").get_pos().y
	
			var anim = get_node("Container/VBoxContainer/AnimationPlayer").get_animation("positionContainer")
			anim.track_set_key_value(0,0,Vector2(moveX1,moveY))
			anim.track_set_key_value(0,1,Vector2(moveX2,moveY))
	
			get_node("Container/VBoxContainer/AnimationPlayer").play("positionContainer")
	
			moveX1 = get_node("Container/VBoxContainer/PanelContainer").get_pos().x - 800 
			#get_node("Container/VBoxContainer/PanelContainer").set_pos(Vector2(moveX,moveY))
	
func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST :
		TransitionTo.fade_to_back("res://scene/menu.tscn")
		
func _on_no_pressed():
		sfxTo.get_node("sfx").play("Button")
		get_node("Container/closer").hide()
		pass # replace with function body


func _on_yes_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to("res://scene/menu.tscn")
	pass # replace with function body

#
#func _on_TextureButton4_pressed():
#	var moveX2 = get_node("Container/VBoxContainer/PanelContainer").get_pos().x - 800
#	
#	if !(moveX2 <= -2400) :
#		var moveY = get_node("Container/VBoxContainer/PanelContainer").get_pos().y
#	
#		var anim = get_node("Container/VBoxContainer/AnimationPlayer").get_animation("positionContainer")
#		anim.track_set_key_value(0,0,Vector2(moveX1,moveY))
#		anim.track_set_key_value(0,1,Vector2(moveX2,moveY))
#	
#		get_node("Container/VBoxContainer/AnimationPlayer").play("positionContainer")
#	
#		moveX1 = get_node("Container/VBoxContainer/PanelContainer").get_pos().x - 800 
#		#get_node("Container/VBoxContainer/PanelContainer").set_pos(Vector2(moveX,moveY))
#	
#	pass # replace with function body


func _on_TextureButton3_pressed():
	sfxTo.get_node("sfx").play("Button")
	var moveX2 = get_node("Container/VBoxContainer/PanelContainer").get_pos().x - 800
	
	if not get_node("Container/VBoxContainer/AnimationPlayer").is_playing():
		if !(moveX2 <= -2300) :
			var moveY = get_node("Container/VBoxContainer/PanelContainer").get_pos().y
	
			var anim = get_node("Container/VBoxContainer/AnimationPlayer").get_animation("positionContainer")
			anim.track_set_key_value(0,0,Vector2(moveX1,moveY))
			anim.track_set_key_value(0,1,Vector2(moveX2,moveY))
	
			get_node("Container/VBoxContainer/AnimationPlayer").play("positionContainer")
	
			moveX1 = get_node("Container/VBoxContainer/PanelContainer").get_pos().x - 800 
			#get_node("Container/VBoxContainer/PanelContainer").set_pos(Vector2(moveX,moveY))
		pass # replace with function body
