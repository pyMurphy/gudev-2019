extends Node

func _ready():
	_invisible()
	_connections()
	
func _visible():
	for col in get_node('Board').get_children():
		for square in col.get_children():
			square.visible=true
			
func _invisible():
	for col in get_node('Board').get_children():
		for square in col.get_children():
			square.visible=false
			
func _connections():
	get_node("HUD/Characters/guards").connect("focus_entered",self,"_visible")
	get_node("HUD/Characters/guards").connect("focus_exited",self,"_invisible")
	get_node("HUD/Characters/ar").connect("focus_entered",self,"_visible")
	get_node("HUD/Characters/ar").connect("focus_exited",self,"_invisible")
	get_node("HUD/Characters/sniper").connect("focus_entered",self,"_visible")
	get_node("HUD/Characters/sniper").connect("focus_exited",self,"_invisible")
	get_node("HUD/Characters/nerf").connect("focus_entered",self,"_visible")
	get_node("HUD/Characters/nerf").connect("focus_exited",self,"_invisible")