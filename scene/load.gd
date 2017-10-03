extends Control

var pressed = false
onready var ev
onready var btn

func _ready():
	sfxTo.play_this_music_background()
	
	get_tree().set_auto_accept_quit(false)
	
	if sfxTo.is_on:
		get_node("Container/VBoxContainer 2/HBoxContainer 3/MarginContainer3/TextureButton").set_normal_texture(preload("res://images/icon-new_03.png"))
	else:
		get_node("Container/VBoxContainer 2/HBoxContainer 3/MarginContainer3/TextureButton").set_normal_texture(preload("res://images/icon-new_05.png"))
	
	get_node("AnimationPlayer").play("fadeLamp")
	pass
	
func _on_btn_pengetahuan_pressed():
	sfxTo.get_node("sfx").play("Button")
	get_node("popupPengetahuan").show()
	get_node("AnimationPlayer").play("popupPengetahuan")
	get_node("Panel").show()
	pass # replace with function body




func _on_btn_perilaku_pressed():
	
	sfxTo.get_node("sfx").play("Button")
	get_node("popupPerilaku").show()
	get_node("AnimationPlayer").play("popup")
	get_node("Panel").show()
	
	pass # replace with function body


func _on_btn_pembonceng_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to("res://scene/perilaku/perilaku-1.tscn")
	pass # replace with function body


func _on_btn_pengendara_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to("res://scene/perilaku/perilaku-1.tscn")
	pass # replace with function body


func _on_btn_pejalan_kaki_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to("res://scene/perilaku/perilaku-2.tscn")
	pass # replace with function body


func _on_btn_rambu_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to("res://scene/rambu/rambu-1.scn")
	pass # replace with function body


func _on_popupPerilaku_hide():
	get_node("Panel").hide()
	pass # replace with function body


func _on_popupPengetahuan_hide():
	get_node("Panel").hide()
	pass # replace with function body

func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST :
		get_node("popupClose").show()
		

func _on_close_button_pressed():
	sfxTo.get_node("sfx").play("Button")
	get_node("popupPengetahuan").hide()
	get_node("popupPerilaku").hide()
	get_node("popupInfo").hide()
	pass # replace with function body


func _on_iki_close_pressed():
	sfxTo.get_node("sfx").play("Button")
	get_node("popupClose").show()
	get_node("Panel").show()
	pass # replace with function body


func _on_btn_yes_pressed():
	sfxTo.get_node("sfx").play("Button")
	get_tree().quit()
	pass # replace with function body


func _on_btn_no_pressed():
	sfxTo.get_node("sfx").play("Button")
	get_node("popupClose").hide()
	get_node("Panel").hide()
	pass # replace with function body


func _on_btn_mini_game_pressed():
	Transition2To.pos_to("res://game/game.tscn")
	pass # replace with function body




func _on_btn_perlengkapan_pressed():
	sfxTo.get_node("sfx").play("Button")
	TransitionTo.fade_to("res://scene/perlengkapan.tscn")
	pass # replace with function body


func _on_TextureButton_pressed():
	get_node("popupInfo").show()
	get_node("AnimationPlayer").play("popupInfo")
	pass # replace with function body


func _on_TextureButton_button_up():
	get_node("Container/VBoxContainer 2/HBoxContainer 3/MarginContainer4/TextureButton").set_scale(Vector2(1,1))
	pass # replace with function body


func _on_btn_tips_pressed():
	TransitionTo.fade_to("res://scene/tips-trik.tscn")
	pass # replace with function body


func _on_TextureButton_toggled( pressed ):
	if sfxTo.is_on:
		get_node("Container/VBoxContainer 2/HBoxContainer 3/MarginContainer3/TextureButton").set_normal_texture(preload("res://images/icon-new_05.png"))
	else:
		get_node("Container/VBoxContainer 2/HBoxContainer 3/MarginContainer3/TextureButton").set_normal_texture(preload("res://images/icon-new_03.png"))
	sfxTo.stop_music(pressed)
	


	