extends Control

var current
var helm = false
var jaket = false
var sarung = false
var celana = false
var sepatu = false

func _ready():
	get_node("AnimationPlayer").play("anim_judul")
	set_process(true)
	pass

func _process(delta):
	if helm and jaket and sarung and celana and sepatu :
		get_node("Container/tidak").hide()
		get_node("Container/lengkap").show()
	else :
		get_node("Container/tidak").show()
		get_node("Container/lengkap").hide()

func _on_helm_pressed():
	sfxTo.get_node("sfx").play("Button")
	animation_play("helm")
	
	pass # replace with function body


func _on_jaket_pressed():
	sfxTo.get_node("sfx").play("Button")
	animation_play("jaket")
	pass # replace with function body


func _on_sarung_pressed():
	sfxTo.get_node("sfx").play("Button")
	animation_play("sarung")
	pass # replace with function body


func _on_celana_pressed():
	sfxTo.get_node("sfx").play("Button")
	animation_play("celana")
	pass # replace with function body


func _on_sepatu_pressed():
	sfxTo.get_node("sfx").play("Button")
	animation_play("sepatu")
	pass # replace with function body

func animation_play(apa):

	if not get_node("AnimationPlayer").is_playing():
		current = apa
		get_node("Panel").show()
		get_node("AnimationPlayer").play("anim_text")
		get_node("Panel").get_node(apa).show()
	else :
		get_node("Panel").get_node(current).hide()
		get_node("AnimationPlayer").stop()
		get_node("Panel").show()
		get_node("AnimationPlayer").play("anim_text")
		get_node("Panel").get_node(apa).show()
		current = apa



func _on_AnimationPlayer_finished():
	get_node("Panel").hide()
	pass # replace with function body


func _on_helm_toggled( pressed ):
	
	helm = pressed
	
	if pressed:
		get_node("Container/tidak").get_node("helm").show()
	else:
		get_node("Container/tidak").get_node("helm").hide()
	pass # replace with function body


func _on_jaket_toggled( pressed ):
	
	jaket = pressed
	
	if pressed:
		get_node("Container/tidak").get_node("jaket").show()

	else:
		get_node("Container/tidak").get_node("jaket").hide()
	pass # replace with function body


func _on_sarung_toggled( pressed ):
	
	sarung = pressed
	
	if pressed:
		get_node("Container/tidak").get_node("sarung").show()
	else:
		get_node("Container/tidak").get_node("sarung").hide()
	pass # replace with function body


func _on_celana_toggled( pressed ):
	
	celana = pressed
	
	if pressed:
		get_node("Container/tidak").get_node("celana").show()
	else:
		get_node("Container/tidak").get_node("celana").hide()
	pass # replace with function body


func _on_sepatu_toggled( pressed ):
	
	sepatu = pressed
	
	if pressed:
		get_node("Container/tidak").get_node("sepatu").show()
	else:
		get_node("Container/tidak").get_node("sepatu").hide()
	pass # replace with function body


func _on_back_button_pressed():
	TransitionTo.fade_to_back("res://scene/menu.tscn")
	pass # replace with function body

func _notification(what):
	if(what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST):
		TransitionTo.fade_to("res://scene/menu.tscn")
	
func _on_yes_pressed():
	TransitionTo.fade_to("res://scene/menu.tscn")
	pass # replace with function body


func _on_no_pressed():
	get_node("closer").hide()
	pass # replace with function body
