extends Timer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	connect("timeout",self,"_on_timeout")
	
func _on_timeout():
	var item = preload("res://game/question/questFrame.tscn").instance()
	item.set_pos(Vector2(-127,-161))
	get_parent().add_child(item)
