extends Sprite

var dmg = int(get_node('dmg').get_child(0).name)

func _ready():
	pass

func _process(delta):
	_check_health()
	_shoot(self)

func _shoot(node):
	var health_tag = node.get_node("health").get_children()
	var health = int(health_tag[0].name)
	health -= dmg
	health_tag[0].name = str(health)
		
func _check_health():
	var health_tag = get_node("health").get_children()
	if int(health_tag[0].name) <= 0:
		get_parent().remove_child(self)