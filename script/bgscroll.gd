extends Sprite

onready var player = get_node("../Player")

var _ypos = 0

func _ready():
	sfxTo.play_this_music_game()
	get_tree().set_auto_accept_quit(false)
	set_process(true)

func _process(delta):
	_ypos -= player.speed * delta
	if (_ypos * -1) >= 10000:
		get_node("../Spawner").set_wait_time(3.75)
	#	player._max_speed = 650
	if (_ypos * -1) >= 20000:
		get_node("../Spawner").set_wait_time(3.5)
	#	player._max_speed = 800
	if (_ypos * -1) >= 30000:
		get_node("../Spawner").set_wait_time(3.25)
	#	player._max_speed = 950
	if (_ypos * -1) >= 40000:
		get_node("../Spawner").set_wait_time(3)
	#	player._max_speed = 1050
	if (_ypos * -1) >= 50000:
		get_node("../Spawner").set_wait_time(2.75)
#		player._max_speed = 1150
	if (_ypos * -1) >= 60000:
		get_node("../Spawner").set_wait_time(2.5)
#		player._max_speed = 1250
	if (_ypos * -1) >= 70000:
		get_node("../Spawner").set_wait_time(2.25)
#		player._max_speed = 1300
	
	if (_ypos * -1) >= 80000:
		get_node("../Spawner").set_wait_time(2)
#		player._max_speed = 1350
	
	if (_ypos * -1) >= 90000:
		get_node("../Spawner").set_wait_time(2)
#		player._max_speed = 1400
		
	if (_ypos * -1) >= 100000:
		get_node("../Spawner").set_wait_time(1.75)
#		player._max_speed = 1500
	
	set_region_rect(Rect2(0,_ypos,800,1280))


func _on_yes_pressed():
	Transition2To.pos_to("res://scene/menu.tscn")
	pass # replace with function body


func _on_no_pressed():
	set_process(true)
	pass # replace with function body

func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST:
		get_node("../close_form").show()
		set_process(false)

func _on_restart_pressed():
		get_tree().reload_current_scene()


func _on_home_pressed():
	Transition2To.pos_to("res://scene/menu.tscn")
	pass # replace with function body
