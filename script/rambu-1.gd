extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	get_tree().set_auto_accept_quit(false)
	pass


func _on_TextureButton_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to_back("res://scene/menu.tscn")
	pass # replace with function body


func _on_btn_back_pressed():
	sfxTo.get_node("sfx").play("Button")
	pass # replace with function body


func _on_btn_next_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to("res://scene/rambu/rambu-2.scn")
	pass # replace with function body


func _on_btn_back_2_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to("res://scene/rambu/rambu-1.scn")
	pass # replace with function body


func _on_btn_next_2_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to("res://scene/rambu/rambu-3.scn")
	pass # replace with function body


func _on_btn_back_3_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to("res://scene/rambu/rambu-2.scn")
	pass # replace with function body


func _on_btn_next_3_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to("res://scene/rambu/rambu-4.scn")
	pass # replace with function body


func _on_btn_prev_4_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to("res://scene/rambu/rambu-3.scn")
	pass # replace with function body


func _on_btn_next_4_pressed():
	TransitionTo.fade_to("res://scene/rambu/rambu-5.scn")
	pass # replace with function body


func _on_btn_home_4_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to_back("res://scene/menu.tscn")
	pass # replace with function body


func _on_btn_home_2_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to_back("res://scene/menu.tscn")
	pass # replace with function body


func _on_btn_home_3_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to_back("res://scene/menu.tscn")
	pass # replace with function body


func _on_btn_home_1_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to_back("res://scene/menu.tscn")
	pass # replace with function body
	
func _notification(what):
	if(what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST):
		TransitionTo.fade_to_back("res://scene/menu.tscn")
		

func _on_VScrollBar_value_changed( value ):
	get_node("Container/vcontain1/ScrollContainer").set_v_scroll(value)
	pass # replace with function body


func _on_yes_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to("res://scene/menu.tscn")
	pass # replace with function body


func _on_no_pressed():
	sfxTo.get_node("sfx").play("Button")
	get_node("Container/closer").hide()
	pass # replace with function body

