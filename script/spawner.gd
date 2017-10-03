extends Timer

var spawn_items = [
	preload("res://game/packed/barrel/Barrel.tscn"),
	preload("res://game/packed/enemy/Enemy.tscn"),
	preload("res://game/packed/roadblock/RoadBlock.tscn")
]

func _ready():
	connect("timeout",self,"_on_timeout")

func _on_timeout():
	var r = rand_range(0,spawn_items.size())
	var item = spawn_items[r].instance()
	r = rand_range(0,500)
	item.set_pos(Vector2(r, -100))
	get_parent().add_child(item)

func is_hit(boolean):
	if boolean:
		self.stop()