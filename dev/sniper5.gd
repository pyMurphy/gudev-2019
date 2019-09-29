extends Sprite

var dmg = get_node('dmg').dmg

func _ready():
	pass
	

func _process(delta):
	_check_health()
	_shoot(self)

func _shoot(node):
	var health = node.get_node("health").health
	health -= dmg
		
func _check_health():
	var health = get_node("health").health
	if health <= 0:
		get_parent().remove_child(self)